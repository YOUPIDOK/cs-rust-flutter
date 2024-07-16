use actix_web_middleware_keycloak_auth::{AlwaysReturnPolicy, DecodingKey, KeycloakAuth};

use super::db::PostgresPool;

pub struct GraphQLContext {
    pub pool: PostgresPool,
}

impl GraphQLContext {
    pub fn keycloak_auth(&self) -> KeycloakAuth<AlwaysReturnPolicy> {
        let keycloak_pk = std::env::var("KEYCLOAK_PK").expect("KEYCLOAK_PK not found in .env file");
        let keycloak_pk = format!("-----BEGIN PUBLIC KEY-----\n{keycloak_pk}\n-----END PUBLIC KEY-----");
        
        let res = KeycloakAuth {
            detailed_responses: true,
            passthrough_policy: AlwaysReturnPolicy,
            keycloak_oid_public_key: DecodingKey::from_rsa_pem(keycloak_pk.as_bytes()).unwrap(),
            required_roles: vec![],
        }

        println!("{:?}", res.);

        res
    }
}

impl juniper::Context for GraphQLContext {}
