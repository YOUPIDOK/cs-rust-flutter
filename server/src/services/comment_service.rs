use diesel::prelude::*;
use diesel::pg::PgConnection;
use diesel::result::QueryResult;
use crate::models::comment::Comment;
use uuid::Uuid;

pub fn get_comments_by_toilet(conn: &mut PgConnection, toilet_id_filter: Uuid) -> QueryResult<Vec<Comment>> {
    use crate::schema::comments::dsl::*;
    comments.filter(toilet_id.eq(toilet_id_filter)).load::<Comment>(conn)
}

pub fn get_comments_by_user(conn: &mut PgConnection, user_id_filter: Uuid) -> QueryResult<Vec<Comment>> {
    use crate::schema::comments::dsl::*;
    comments.filter(user_id.eq(user_id_filter)).load::<Comment>(conn)
}