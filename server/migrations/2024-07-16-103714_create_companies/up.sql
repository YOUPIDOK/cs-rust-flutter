-- Your SQL goes here
CREATE TABLE companies (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    name VARCHAR NOT NULL
);
SELECT diesel_manage_updated_at('companies');
INSERT INTO companies (name)
VALUES (
        'Ville de Lyon'
    ),
    (
        'Gare 2thello Lyon Part-dieu'
    ),
    (
        'Aeroport Roissy Charles de Gaules'
    ),
    (
        'Notes de gestion de projet'
    ),
    (
        'Gare 2thello Strasbourg'
    );