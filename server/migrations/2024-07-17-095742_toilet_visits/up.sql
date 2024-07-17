-- Your SQL goes here
CREATE TABLE toilet_visits (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    toilet_id UUID NOT NULL,
    user_id UUID NOT NULL,
    date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_toilet_visit_toilets FOREIGN KEY (toilet_id) REFERENCES toilets(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT fk_toilet_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
