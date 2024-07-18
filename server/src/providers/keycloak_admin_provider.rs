/* use keycloak::{KeycloakAdmin, KeycloakAdminToken};

pub async fn get_admin() -> Result<KeycloakAdmin, Box<dyn std::error::Error>> {
    let url = std::env::var("KEYCLOAK_ADDR").unwrap_or_else(|_| "http://localhost:8080".into());
    let user = std::env::var("KEYCLOAK_USER").unwrap_or_else(|_| "admin".into());
    let password = std::env::var("KEYCLOAK_PASSWORD").unwrap_or_else(|_| "password".into());

    let client = reqwest::Client::new();
    let admin_token = KeycloakAdminToken::acquire(&url, &user, &password, &client).await?;
    let admin = KeycloakAdmin::new(&url, admin_token, client);

    Ok(admin)
} */
