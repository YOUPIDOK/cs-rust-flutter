-- Your SQL goes here
CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    toilet_id UUID NOT NULL,
    user_id UUID NOT NULL,
    note DOUBLE PRECISION NOT NULL,
    comment TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_comment_visit_toilets FOREIGN KEY (toilet_id) REFERENCES toilets(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT fk_comment_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);