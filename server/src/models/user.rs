use chrono::NaiveDateTime;
use diesel::prelude::*;
use juniper::{GraphQLInputObject, GraphQLObject};
use uuid::Uuid;

use crate::schema::users;

#[derive(Queryable, Selectable, Identifiable, Debug, GraphQLObject)]
#[diesel(table_name = users)]
#[graphql(description = "A user")]
pub struct User {
    pub id: Uuid,
    pub keycloak_uuid: Uuid,
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub gender: String,
    pub country: String,
    pub address: String,
    pub town: String,
    pub postal_code: String,
    pub mobile_number: String,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
    pub authorize_data_sell: bool
}

#[derive(AsChangeset)]
#[diesel(table_name = users)]
pub struct UserChangeset {
    pub id: Option<Uuid>,
    pub firstname: Option<String>,
    pub lastname: Option<String>,
    pub email: Option<String>,
    pub keycloak_uuid: Option<Uuid>,
}

#[derive(Insertable)]
#[diesel(table_name = users)]
pub struct NewUser {
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub keycloak_uuid: Uuid,
}

#[derive(GraphQLInputObject)]
pub struct CreateUser {
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub keycloak_uuid: Uuid,
}

#[derive(GraphQLInputObject)]
pub struct ModifyUser {
    pub id: Uuid,
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub keycloak_uuid: Uuid,
}