-- Your SQL goes here
CREATE TABLE toilets (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    is_maintenance BOOLEAN NOT NULL,
    door_is_open BOOLEAN NOT NULL,
    is_locker BOOLEAN NOT NULL,
    name VARCHAR NOT NULL,
    lat DOUBLE PRECISION,
    long DOUBLE PRECISION,
    companies_id UUID NOT NULL,
    CONSTRAINT fk_companies FOREIGN KEY (companies_id) REFERENCES companies(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);

-- Populate the toilets table with initial data
INSERT INTO toilets (is_maintenance, door_is_open, is_locker, name, lat, long, companies_id)
VALUES 
    (false, false, true, '1', 48.8566, 2.3522, '305024c8-ed57-427c-a7ad-8dbf3dc37a61'),
    (false, false, false, '2', 48.862725, 2.3522, '305024c8-ed57-427c-a7ad-8dbf3dc37a61'),
    (true, true, true, '3', 48.8566, 2.3522, '305024c8-ed57-427c-a7ad-8dbf3dc37a61'),
    (true, false, true, '4', 48.8566, 2.3522, '305024c8-ed57-427c-a7ad-8dbf3dc37a61'),
    (false, false, true, '5', 48.8566, 2.3522, '305024c8-ed57-427c-a7ad-8dbf3dc37a61');
