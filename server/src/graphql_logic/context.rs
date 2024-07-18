use actix_web::http::header::HeaderMap;
use actix_web_middleware_keycloak_auth::AuthError;
use jsonwebtoken::{decode, decode_header, DecodingKey, Validation};
use juniper::{graphql_value, FieldError, FieldResult};
use serde_json::Value;
use uuid::Uuid;

use crate::{models::user::User, services::user_service::find_user_with_keycloak_id};

use super::db::PostgresPool;

pub struct GraphQLContext {
    pub pool: PostgresPool,
    pub headers: HeaderMap,
}

impl GraphQLContext {
    pub async fn authorize(&self) -> FieldResult<(User)> {
        let keycloak_pk = std::env::var("KEYCLOAK_PK").expect("KEYCLOAK_PK not found in .env file");
        let keycloak_pk = format!("-----BEGIN PUBLIC KEY-----\n{keycloak_pk}\n-----END PUBLIC KEY-----");

        let keycloak_oid_public_key = DecodingKey::from_rsa_pem(keycloak_pk.as_bytes()).unwrap();

        let headers = &self.headers;
        let auth_header = match headers.get("Authorization") {
            Some(auth_header) => auth_header,
            None => {
                return FieldResult::Err(FieldError::new(
                    AuthError::NoAuthorizationHeader,
                    graphql_value!({"authorization_error": "No authorization header"}),
                ))
            }
        };

        let auth_header_str = auth_header.to_str();
        let raw_token = match auth_header_str {
            Ok(raw_token) => raw_token.trim_start_matches("Bearer "),
            Err(_) => {
                return FieldResult::Err(FieldError::new(
                    AuthError::InvalidAuthorizationHeader,
                    graphql_value!({"authorization_error": "Invalid authorization header"}),
                ))
            }
        };

        let token = raw_token.trim_start_matches("Bearer ");


        let validation = match decode_header(token) {
            Ok(jwt_header) => {
                let mut validation = Validation::new(jwt_header.alg);
                validation.validate_aud = false;
                validation
            }
            Err(e) => {
                return FieldResult::Err(FieldError::new(
                    AuthError::InvalidJwt(e.to_string()),
                    graphql_value!({"authorization_error": "Invalid JWT"}),
                ));
            }
        };

        match decode::<Value>(token, &keycloak_oid_public_key, &validation) {
            Ok(data) => {
                let conn = &mut self.pool.get()?;
                let sub = data.claims["sub"].as_str().ok_or_else(|| {
                    FieldError::new(
                        AuthError::DecodeError("Missing 'sub' field in token".to_string()),
                        graphql_value!({"authorization_error": "Invalid JWT"}),
                    )
                })?;

                // Convertir le "sub" en Uuid
                let keycloak_id = Uuid::parse_str(sub).map_err(|e| {
                    FieldError::new(
                        AuthError::DecodeError(e.to_string()),
                        graphql_value!({"authorization_error": "Invalid JWT"}),
                    )
                })?;

                match find_user_with_keycloak_id(conn, keycloak_id).await {
                    Ok(user) => {
                      match user {
                        Some(user) => {
                            Ok(user)
                        },
                        None => FieldResult::Err(FieldError::new(
                            AuthError::DecodeError(String::from("User does not exits")),
                            graphql_value!({"authorization_error": "Invalid JWT"}),
                        )),
                      }
                    }, 
                    Err(e) => FieldResult::Err(FieldError::new(
                        AuthError::DecodeError(e.to_string()),
                        graphql_value!({"authorization_error": "Invalid JWT"}),
                    )),
                }
            },
            Err(e) => FieldResult::Err(FieldError::new(
                AuthError::DecodeError(e.to_string()),
                graphql_value!({"authorization_error": "Invalid JWT"}),
            )),
        }
    }
}

impl juniper::Context for GraphQLContext {}
