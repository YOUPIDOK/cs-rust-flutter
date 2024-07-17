-- Your SQL goes here
CREATE TABLE companies (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    name VARCHAR NOT NULL
);
SELECT diesel_manage_updated_at('companies');
INSERT INTO companies (id, name)
VALUES (
        '09ea024f-e254-4b6c-8253-d0c45b23e51e',
        'Ville de Lyon'
    ),
    (
        'cde7e4de-3611-40de-9fe6-b3ebb0c2d1af',
        'Gare 2thello Lyon Partdieu'
    ),
    (
        'd1062670-49da-4a94-8c72-0406f5e66e84',
        'Aeroport Roissy Charles de Gaules'
    ),
    (
        '4e8a3933-2f76-4573-bf5c-7a5ef0477248',
        'Aeroport de Tokyo'
    ),
    (
        'caad8e2a-5e5a-477d-b24e-e73a075a73b0',
        'Gare 2thello Strasbourg'
    );