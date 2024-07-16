use diesel::prelude::*;
use juniper::GraphQLObject;
use uuid::Uuid;

use crate::schema::companies;

#[derive(Queryable, Identifiable, Debug, GraphQLObject)]
#[diesel(table_name = companies)]
#[graphql(description = "A company")]
pub struct Company {
    pub id: Uuid,
    pub name: String,
}
