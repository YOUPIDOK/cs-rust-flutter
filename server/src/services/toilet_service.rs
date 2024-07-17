use diesel::prelude::*;
use crate::models::toilet::Toilet;
use uuid::Uuid;

pub fn get_toilet(conn: &mut PgConnection, id: Uuid) -> QueryResult<Option<Toilet>> {
    use crate::schema::toilets::dsl::*;
    toilets.filter(id.eq(id)).first(conn).optional()
}

pub fn get_toilet_proche(conn: &mut PgConnection, lat: f64, long: f64) -> QueryResult<Vec<Toilet>> {
    use crate::schema::toilets::dsl::*;
    let radius = 5.0 / 111.0; // Approximate radius in degrees
    toilets
        .filter(
            lat.between(lat - radius, lat + radius)
                .and(long.between(long - radius, long + radius))
        )
        .load(conn)
}
