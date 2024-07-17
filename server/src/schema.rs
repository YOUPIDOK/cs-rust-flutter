// @generated automatically by Diesel CLI.

diesel::table! {
    companies (id) {
        id -> Uuid,
        name -> Varchar,
    }
}

diesel::table! {
    toilets (id) {
        id -> Uuid,
        is_maintenance -> Bool,
        door_is_open -> Bool,
        is_locker -> Bool,
        name -> Varchar,
        lat -> Float8,
        long -> Float8,
        companies_id -> Uuid,
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

diesel::joinable!(toilets -> companies (companies_id));

diesel::allow_tables_to_appear_in_same_query!(
    companies,
    toilets,
    users,
);
