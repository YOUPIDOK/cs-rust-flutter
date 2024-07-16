use actix_web_middleware_keycloak_auth::{AlwaysReturnPolicy, DecodingKey, KeycloakAuth};
use juniper::{graphql_value, FieldError};

use super::db::PostgresPool;

pub struct GraphQLContext {
    pub pool: PostgresPool,
}

impl juniper::Context for GraphQLContext {}
