use chrono::NaiveDateTime;
use diesel::prelude::*;
use juniper::{GraphQLInputObject, GraphQLObject, GraphQLEnum};
use uuid::Uuid;

use crate::schema::users;

#[derive(Queryable, Selectable, Identifiable, PartialEq, Debug, GraphQLObject)]
#[diesel(table_name = users)]
#[graphql(description = "A user")]
#[diesel(check_for_backend(diesel::pg::Pg))]
pub struct User {
    pub id: Uuid,
    pub keycloak_uuid: Uuid,
    pub email: String,
    pub firstname: String,
    pub lastname: String,
    pub gender: UserGender,
    pub country: String,
    pub town: String,
    pub postal_code: String,
    pub address: String,
    pub mobile_number: String,
    pub authorize_data_sell: bool,
    pub created_at: NaiveDateTime,
    pub updated_at: NaiveDateTime,
}

#[derive(Insertable)]
#[diesel(table_name = users)]
pub struct NewUser {
    pub keycloak_uuid: Uuid,
    pub email: String,
    pub firstname: String,
    pub lastname: String,
    pub gender: UserGender,
    pub country: String,
    pub town: String,
    pub postal_code: String,
    pub address: String,
    pub mobile_number: String,
    pub authorize_data_sell: bool,
}

#[derive(GraphQLInputObject)]
pub struct CreateUser {
    pub keycloak_uuid: Uuid,
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub gender: UserGender,
    pub country: String,
    pub town: String,
    pub postal_code: String,
    pub address: String,
    pub mobile_number: String,
    pub authorize_data_sell: bool
}

#[derive(GraphQLInputObject)]
pub struct ModifyUser {
    pub id: Uuid,
    pub keycloak_uuid: Uuid,
    pub firstname: String,
    pub lastname: String,
    pub email: String,
    pub gender: UserGender,
    pub country: String,
    pub town: String,
    pub postal_code: String,
    pub address: String,
    pub mobile_number: String,
    pub authorize_data_sell: bool
}

#[derive(AsChangeset)]
#[diesel(table_name = users)]
pub struct UserChangeset {
    pub id: Option<Uuid>,
    pub keycloak_uuid: Option<Uuid>,
    pub firstname: Option<String>,
    pub lastname: Option<String>,
    pub email: Option<String>,
    pub gender: Option<UserGender>,
    pub country: Option<String>,
    pub town: Option<String>,
    pub postal_code: Option<String>,
    pub address: Option<String>,
    pub mobile_number: Option<String>,
    pub authorize_data_sell: Option<bool>
}

#[derive(diesel_derive_enum::DbEnum, Debug, GraphQLEnum, PartialEq)]
#[ExistingTypePath = "crate::schema::sql_types::UserGender"]
pub enum UserGender {
    #[db_rename = "MALE"]
    Male,
    #[db_rename = "FEMALE"]
    Female,
    #[db_rename = "OTHER"]
    Other,
}