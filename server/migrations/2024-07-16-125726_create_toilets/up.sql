-- Your SQL goes here
CREATE TABLE toilets (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    is_maintenance BOOLEAN NOT NULL,
    door_is_open BOOLEAN NOT NULL,
    is_locked BOOLEAN NOT NULL,
    name VARCHAR NOT NULL,
    lat DOUBLE PRECISION NOT NULL,
    long DOUBLE PRECISION NOT NULL,
    price DOUBLE PRECISION NOT NULL,
    companies_id UUID NOT NULL,
    CONSTRAINT fk_toilets_companies FOREIGN KEY (companies_id) REFERENCES companies(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Populate the toilets table with initial data
INSERT INTO toilets (is_maintenance, door_is_open, is_locked, name, lat, long, price, companies_id)
VALUES 
    (false, false, true, '1', 45.750000, 4.850000, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, false, '2', 45.750000, 4.850000, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, false, true, '3', 45.750000, 4.850000, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, false, true, '4', 45.750000, 4.850000, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, false, true, 'tokyo', 34.886306, 134.379711, 1.0, '4e8a3933-2f76-4573-bf5c-7a5ef0477248'),
    (false, false, true, '5', 45.750000, 4.850000, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, true, '6', 37.774929, -122.419418, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, true, '7', 38.774929, -124.419418, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, true, '8', 39.774929, -125.419418, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, true, '9', 40.774929, -126.419418, 0.50, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
