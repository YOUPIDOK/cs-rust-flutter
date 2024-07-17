use actix_cors::Cors;
use actix_web::{web, App, HttpServer};
use diesel::pg::PgConnection;
use diesel::r2d2::ConnectionManager;
use graphql_logic::db::get_pool;
use graphql_logic::endpoints::graphql_endpoints;
use r2d2::Pool;

mod graphql_logic;
mod models;
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

    let state = web::Data::new(AppState { conn: pool });

    HttpServer::new(move || {
        let cors = Cors::default().allow_any_origin().allow_any_method().allow_any_header().max_age(3600);
        App::new()
            .wrap(cors)
            .app_data(state.clone())
            .configure(graphql_endpoints)
    })
    .bind("0.0.0.0:8000")?
    .run()
    .await
}