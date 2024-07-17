-- Your SQL goes here
CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid() NOT NULL,
    toilet_id UUID NOT NULL,
    user_id UUID NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    note NUMERIC(3, 1),
    CONSTRAINT fk_comment_visit_toilets FOREIGN KEY (toilet_id) REFERENCES toilets(id) ON DELETE NO ACTION ON UPDATE NO ACTION,
    CONSTRAINT fk_comment_users FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
