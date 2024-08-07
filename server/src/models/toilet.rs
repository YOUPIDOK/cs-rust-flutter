use diesel::prelude::*;
use juniper::GraphQLObject;
use uuid::Uuid;

use crate::schema::toilets;
use crate::models::company::Company;

#[derive(Queryable, Insertable, Identifiable, Associations, Debug, GraphQLObject)]
#[diesel(belongs_to(Company, foreign_key = companies_id))]
#[diesel(table_name = toilets)]
#[graphql(description = "A toilet")]
pub struct Toilet {
    pub id: Uuid,
    pub is_maintenance: bool,
    pub door_is_open: bool,
    pub is_locked: bool,
    pub name: String,
    pub lat: f64,
    pub long: f64,
    pub price: f64,
    pub companies_id: Uuid,
}

#[derive(Debug, GraphQLObject)]
pub struct ToiletWithDistance {
    pub toilet: Toilet,
    pub distance: f64,
}