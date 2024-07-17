// @generated automatically by Diesel CLI.

pub mod sql_types {
    #[derive(diesel::query_builder::QueryId, Clone, diesel::sql_types::SqlType)]
    #[diesel(postgres_type(name = "user_gender"))]
    pub struct UserGender;
}

diesel::table! {
    comments (id) {
        id -> Uuid,
        toilet_id -> Uuid,
        user_id -> Uuid,
        created_at -> Timestamp,
        note -> Nullable<Numeric>,
    }
}

diesel::table! {
    companies (id) {
        id -> Uuid,
        name -> Varchar,
    }
}

diesel::table! {
    toilet_visits (id) {
        id -> Uuid,
        toilet_id -> Uuid,
        user_id -> Uuid,
        date -> Timestamp,
    }
}

diesel::table! {
    toilets (id) {
        id -> Uuid,
        is_maintenance -> Bool,
        door_is_open -> Bool,
        is_locked -> Bool,
        name -> Varchar,
        lat -> Float8,
        long -> Float8,
        price -> Float8,
        companies_id -> Uuid,
    }
}

diesel::table! {
    use diesel::sql_types::*;
    use super::sql_types::UserGender;

    users (id) {
        id -> Uuid,
        keycloak_uuid -> Uuid,
        email -> Varchar,
        firstname -> Varchar,
        lastname -> Varchar,
        gender -> UserGender,
        #[max_length = 50]
        country -> Varchar,
        town -> Varchar,
        #[max_length = 10]
        postal_code -> Varchar,
        address -> Varchar,
        #[max_length = 20]
        mobile_number -> Varchar,
        authorize_data_sell -> Bool,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::joinable!(comments -> toilets (toilet_id));
diesel::joinable!(comments -> users (user_id));
diesel::joinable!(toilet_visits -> toilets (toilet_id));
diesel::joinable!(toilet_visits -> users (user_id));
diesel::joinable!(toilets -> companies (companies_id));

diesel::allow_tables_to_appear_in_same_query!(
    comments,
    companies,
    toilet_visits,
    toilets,
    users,
);
