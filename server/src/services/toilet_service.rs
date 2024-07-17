use diesel::prelude::*;
use diesel::pg::PgConnection;
use diesel::result::QueryResult;
use crate::models::toilet::Toilet;
use uuid::Uuid;

pub fn get_toilet(conn: &mut PgConnection, id: Uuid) -> QueryResult<Option<Toilet>> {
    use crate::schema::toilets::dsl::*;
    toilets.filter(id.eq(id)).first(conn).optional()
}


fn haversine_distance(lat1: f64, lon1: f64, lat2: f64, lon2: f64) -> f64 {
    let r = 6371.0; // Rayon de la Terre en kilomètres
    let dlat = (lat2 - lat1).to_radians();
    let dlon = (lon2 - lon1).to_radians();
    let a = (dlat / 2.0).sin().powi(2) + lat1.to_radians().cos() * lat2.to_radians().cos() * (dlon / 2.0).sin().powi(2);
    let c = 2.0 * a.sqrt().atan2((1.0 - a).sqrt());
    r * c
}

pub fn get_toilet_proche(conn: &mut PgConnection, lat_test: f64, lon: f64, radius_km: f64) -> QueryResult<Vec<Toilet>> {
    // let radius_km = 5.0;

    use crate::schema::toilets::dsl::*;
    let all_toilets = toilets.load::<Toilet>(conn)?;
    let nearby_toilets: Vec<Toilet> = all_toilets.into_iter()
        .filter(|toilet| {
            let dist = haversine_distance(lat_test, lon, toilet.lat, toilet.long);
            dist <= radius_km
        })
        .collect();
    Ok(nearby_toilets)
}