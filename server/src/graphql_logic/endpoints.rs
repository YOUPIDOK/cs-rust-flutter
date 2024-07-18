use super::context::GraphQLContext;
use super::graphql::schema;
use crate::AppState;
use actix_web::{web, HttpResponse};
use actix_web::{Error, HttpRequest};
use juniper_actix::{graphiql_handler, graphql_handler, playground_handler, subscriptions};
use juniper_graphql_ws::ConnectionConfig;
use std::time::Duration;

pub fn graphql_endpoints(config: &mut web::ServiceConfig) {
    config
        .route("/playground", web::get().to(graphql_playground))
        .route("/graphiql", web::get().to(graphiql))
        .route("/graphql", web::post().to(graphql))
        .route("/subscriptions", web::get().to(subscriptions));
}

async fn graphql_playground() -> Result<HttpResponse, Error> {
    playground_handler("/graphql", Some("/subscriptions")).await
}

async fn graphiql() -> Result<HttpResponse, Error> {
    graphiql_handler("/graphql", Some("/subscriptions")).await
}

async fn graphql(req: HttpRequest, payload: web::Payload, state: web::Data<AppState>) -> Result<HttpResponse, Error> {
    let pool = state.conn.clone();
    let schema = schema();
    let ctx = GraphQLContext {
        pool,
        headers: req.headers().clone(),
    };
    graphql_handler(&schema, &ctx, req, payload).await
}

async fn subscriptions(req: HttpRequest, state: web::Data<AppState>, stream: web::Payload) -> Result<HttpResponse, Error> {
    let pool = state.conn.clone();
    let ctx = GraphQLContext {
        pool,
        headers: req.headers().clone(),
    };
    let schema = schema().into();
    let config = ConnectionConfig::new(ctx);
    // set the keep alive interval to 15 secs so that it doesn't timeout in playground
    // playground has a hard-coded timeout set to 20 secs
    let config = config.with_keep_alive_interval(Duration::from_secs(15));

    subscriptions::ws_handler(req, stream, schema, config).await
}
