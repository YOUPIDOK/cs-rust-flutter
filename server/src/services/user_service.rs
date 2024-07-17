use crate::models::user::{NewUser, User, CreateUser, UserGender, ModifyUser, UserChangeset};
use crate::schema::users::dsl::{/* email ,*/ id, keycloak_uuid, users};
use diesel::pg::PgConnection;
use diesel::prelude::*;
use diesel::r2d2::ConnectionManager;
use diesel::r2d2::PooledConnection;
use keycloak::{KeycloakAdmin, KeycloakAdminToken};
use uuid::Uuid;

pub fn find_user(conn: &mut PooledConnection<ConnectionManager<PgConnection>>, user_id: Uuid) -> Result<Option<User>, diesel::result::Error> {
    match users.filter(id.eq(user_id)).first::<User>(conn) {
        Ok(user) => Ok(Some(user)),
        Err(_) => Ok(None),
    }
}

/* pub fn find_user_with_email(
    conn: &mut PooledConnection<ConnectionManager<PgConnection>>,
    user_email: String,
) -> Result<Option<User>, diesel::result::Error> {
    match users.filter(email.eq(user_email)).first::<User>(conn) {
        Ok(user) => Ok(Some(user)),
        Err(_) => Ok(None),
    }
} */

pub async fn find_user_with_keycloak_id(
    conn: &mut PooledConnection<ConnectionManager<PgConnection>>,
    keycloak_id: Uuid,
) -> Result<Option<User>, diesel::result::Error> {
    match users.filter(keycloak_uuid.eq(keycloak_id)).first(conn).optional()? {
        Some(user) => Ok(Some(user)),
        None => {
            let url = std::env::var("KEYCLOAK_ADDR").unwrap_or_else(|_| "http://keycloak:8080".into());
            let test = 0;
            println!("url:  {url}");
            let user = std::env::var("KEYCLOAK_USER").unwrap_or_else(|_| "admin".into());
            let password = std::env::var("KEYCLOAK_PASSWORD").unwrap_or_else(|_| "password".into());
            let client = reqwest::Client::new();
            match KeycloakAdminToken::acquire(&url, &user, &password, &client).await {
                Ok(admin_token) => {
                    let keycloak = KeycloakAdmin::new(&url, admin_token, client);
                    let realm = std::env::var("KEYCLOAK_REALM").unwrap_or_else(|_| "iw_cs".into());

                    let user_info = keycloak.realm_users_with_user_id_get(&realm, &keycloak_id.to_string(), None).await;

                    match user_info {
                        Ok(info) => {
                            if info.email.is_some() && info.first_name.is_some() && info.last_name.is_some() {
                                let new_user = NewUser {
                                    keycloak_uuid: keycloak_id,
                                    email: info.email.unwrap(),
                                    firstname: String::from(""),
                                    lastname: String::from(""),
                                    gender: UserGender::Other,
                                    country: String::from(""),
                                    town: String::from(""),
                                    postal_code: String::from(""),
                                    address: String::from(""),
                                    mobile_number: String::from(""),
                                    authorize_data_sell: false,
                                };
                                match diesel::insert_into(users).values(&new_user).get_result::<User>(conn) {
                                    Ok(user) => Ok(Some(user)),
                                    Err(e) => {
                                        println!("Failed to retrieve user after insert: {:?}", e);
                                        Ok(None)
                                    }
                                }
                            } else {
                                println!("Not enough info in user representation : {:?}", info);
                                Ok(None)
                            }
                        }
                        Err(e) => {
                            println!("Failed to get user info: {:?}", e);
                            Ok(None)
                        }
                    }
                }
                Err(e) => {
                    println!("Failed to acquire admin token: {:?}", e);
                    Ok(None)
                }
            }
        }
    }
}

pub fn create_user(conn: &mut PooledConnection<ConnectionManager<PgConnection>>, input: CreateUser) -> Result<User, diesel::result::Error> {
    let new_user = NewUser {
        keycloak_uuid: input.keycloak_uuid,
        firstname: input.firstname,
        lastname: input.lastname,
        email: input.email,
        gender: input.gender,
        country: input.country,
        address: input.address,
        town: input.town,
        postal_code: input.postal_code,
        mobile_number: input.mobile_number,
        authorize_data_sell: input.authorize_data_sell
    };
    diesel::insert_into(users).values(&new_user).get_result::<User>(conn)
}

pub fn update_user(conn: &mut PooledConnection<ConnectionManager<PgConnection>>, input: ModifyUser) -> Result<User, diesel::result::Error> {
    let target = users.filter(id.eq(input.id));
    diesel::update(target)
        .set(&UserChangeset {
            id: None,
            keycloak_uuid: Some(input.keycloak_uuid),
            firstname: Some(input.firstname),
            lastname: Some(input.lastname),
            email: Some(input.email),
            gender: Some(input.gender),
            country: Some(input.country),
            town: Some(input.town),
            postal_code: Some(input.postal_code),
            address: Some(input.address),
            mobile_number: Some(input.mobile_number),
            authorize_data_sell: Some(input.authorize_data_sell)  
        })
        .get_result::<User>(conn)
}
