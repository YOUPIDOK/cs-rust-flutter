use diesel::prelude::*;
use diesel::pg::PgConnection;
use diesel::result::QueryResult;
use crate::models::comment::NewComment;
use crate::models::comment::{Comment, CreateComment};
use uuid::Uuid;
use crate::schema::comments::dsl::comments;

use diesel::r2d2::ConnectionManager;
use diesel::r2d2::PooledConnection;

pub fn get_comments_by_toilet(conn: &mut PgConnection, toilet_id_filter: Uuid) -> QueryResult<Vec<Comment>> {
    use crate::schema::comments::dsl::*;
    comments.filter(toilet_id.eq(toilet_id_filter)).load::<Comment>(conn)
}

pub fn get_comments_by_user(conn: &mut PgConnection, user_id_filter: Uuid) -> QueryResult<Vec<Comment>> {
    use crate::schema::comments::dsl::*;
    comments.filter(user_id.eq(user_id_filter)).load::<Comment>(conn)
}

pub fn create_comment(conn: &mut PooledConnection<ConnectionManager<PgConnection>>, input: CreateComment, user_id_owner: Uuid) -> Result<Comment, diesel::result::Error> {
    let new_comment = NewComment {
        toilet_id: input.toilet_id,
        user_id: user_id_owner,
        note: input.note,
        comment: input.comment,
    };
    diesel::insert_into(comments).values(&new_comment).get_result::<Comment>(conn)
}