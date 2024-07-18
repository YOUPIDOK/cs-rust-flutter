use diesel::prelude::*;
use juniper::GraphQLObject;
use uuid::Uuid;
use chrono::NaiveDateTime;

use crate::schema::comments;
use crate::models::toilet::Toilet;
use crate::models::user::User;


#[derive(Queryable, Selectable, Identifiable, Associations, Debug, GraphQLObject, PartialEq)]
#[diesel(belongs_to(Toilet, foreign_key = toilet_id))]
#[diesel(belongs_to(User, foreign_key = user_id))]
#[diesel(table_name = comments)]
#[diesel(check_for_backend(diesel::pg::Pg))]
#[graphql(description = "A comment")]
pub struct Comment {
    pub id: Uuid,
    pub toilet_id: Uuid,
    pub user_id: Uuid,
    pub note: f64,
    pub comment: Option<String>,
    pub created_at: NaiveDateTime,
}
