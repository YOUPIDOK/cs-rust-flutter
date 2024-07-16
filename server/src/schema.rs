// @generated automatically by Diesel CLI.

diesel::table! {
    companies (id) {
        id -> Uuid,
        name -> Varchar,
    }
}

diesel::table! {
    users (id) {
        id -> Uuid,
        firstname -> Varchar,
        lastname -> Varchar,
        email -> Varchar,
        keycloak_uuid -> Uuid,
        created_at -> Timestamp,
        updated_at -> Timestamp,
    }
}

diesel::allow_tables_to_appear_in_same_query!(
    companies,
    users,
);
