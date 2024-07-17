use actix_cors::Cors;
use actix_web::{web, App, HttpServer};
use diesel::pg::PgConnection;
use diesel::r2d2::ConnectionManager;
use graphql_logic::db::get_pool;
use graphql_logic::endpoints::graphql_endpoints;
use r2d2::Pool;
use std::sync::Arc;
use juniper_actix::{graphiql_handler, graphql_handler, subscriptions_handler};
use crate::graphql_logic::graphql::{create_schema, Schema};
use crate::graphql_logic::context::GraphQLContext;

mod graphql_logic;
mod models;
mod providers;
mod schema;
mod services;

struct AppState {
    conn: Pool<ConnectionManager<PgConnection>>,
}

fn logging_setup() {
    std::env::set_var("RUST_LOG", "debug");
    env_logger::init();
    dotenv::dotenv().ok();
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    logging_setup();
    let pool = get_pool();

    let state = web::Data::new(AppState { conn: pool.clone() });

    let schema = Arc::new(create_schema());

    HttpServer::new(move || {
        let cors = Cors::default().allow_any_origin().allow_any_method().allow_any_header().max_age(3600);
        App::new()
            .wrap(cors)
            .app_data(state.clone())
            .app_data(web::Data::new(schema.clone()))
            .service(
                web::resource("/graphql")
                    .route(web::post().to(graphql_handler(schema.clone(), GraphQLContext { pool: pool.clone() }))),
            )
            .service(
                web::resource("/subscriptions")
                    .route(web::get().to(subscriptions_handler(schema.clone(), GraphQLContext { pool: pool.clone() }))),
            )
            .service(web::resource("/graphiql").route(web::get().to(graphiql_handler("/graphql", Some("/subscriptions")))))
            .configure(graphql_endpoints)
    })
    .bind("0.0.0.0:8000")?
    .run()
    .await
}