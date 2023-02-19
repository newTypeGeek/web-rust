use actix_web::{get, middleware::Logger};
use env_logger::Env;

#[get("/")]
async fn index() -> &'static str {
    "Hello world!"
}

#[actix_web::main]
async fn main() -> std::io::Result<()> {
    env_logger::Builder::from_env(Env::default().default_filter_or("debug"))
        .format_timestamp_millis()
        .init();

    actix_web::HttpServer::new(|| actix_web::App::new().service(index).wrap(Logger::default()))
        .bind(("0.0.0.0", 8080))?
        .run()
        .await
}
