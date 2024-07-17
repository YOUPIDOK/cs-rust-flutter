-- Your SQL goes here
CREATE TABLE toilets (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    is_maintenance BOOLEAN NOT NULL,
    door_is_open BOOLEAN NOT NULL,
    is_locker BOOLEAN NOT NULL,
    name VARCHAR NOT NULL,
    lat DOUBLE PRECISION NOT NULL,
    long DOUBLE PRECISION NOT NULL,
    companies_id UUID NOT NULL,
    CONSTRAINT fk_companies FOREIGN KEY (companies_id) REFERENCES companies(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Populate the toilets table with initial data
INSERT INTO toilets (is_maintenance, door_is_open, is_locker, name, lat, long, companies_id)
VALUES 
    (false, false, true, '1', 45.750000, 4.850000, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (false, false, false, '2', 45.750000, 4.850000, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, true, true, '3', 45.750000, 4.850000, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, false, true, '4', 45.750000, 4.850000, '09ea024f-e254-4b6c-8253-d0c45b23e51e'),
    (true, false, true, 'tokyo', 34.886306, 134.379711, '4e8a3933-2f76-4573-bf5c-7a5ef0477248'),
    (false, false, true, '5', 45.750000, 4.850000, '09ea024f-e254-4b6c-8253-d0c45b23e51e');
