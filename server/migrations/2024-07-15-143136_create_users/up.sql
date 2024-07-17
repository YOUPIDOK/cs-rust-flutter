CREATE TYPE USER_GENDER as ENUM ('MALE', 'FEMALE', 'OTHER');

CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    keycloak_uuid UUID NOT NULL,
    email UUID NOT NULL,
    firstname VARCHAR NOT NULL,
    gender USER_GENDER NOT NULL,
    lastname VARCHAR NOT NULL,
    country VARCHAR(50) NOT NULL,
    address VARCHAR NOT NULL,
    postal_code VARCHAR(10) NOT NULL,
    mobile_number VARCHAR(20) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    authorized_data_sell BOOLEAN NOT NULL DEFAULT FALSE
);

SELECT diesel_manage_updated_at('users');
