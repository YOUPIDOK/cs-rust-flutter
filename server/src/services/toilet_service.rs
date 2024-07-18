use diesel::prelude::*;
use diesel::pg::PgConnection;
use diesel::result::QueryResult;
use crate::models::toilet::Toilet;
use uuid::Uuid;
use actix_rt::time::sleep;
use std::time::Duration;
use diesel::r2d2::{ConnectionManager, Pool};
use log::{error, info};

pub fn get_toilet_with_distance(conn: &mut PgConnection, id_toilet: Uuid, lat_test: f64, long_test: f64) -> QueryResult<(Toilet, f64)> {
    use crate::schema::toilets::dsl::*;
    let toilet = toilets.filter(id.eq(id_toilet)).first::<Toilet>(conn)?;
    let distance = haversine_distance(lat_test, long_test, toilet.lat, toilet.long);
    Ok((toilet, distance))
}

pub fn get_toilet(conn: &mut PgConnection, id_toilet: Uuid) -> QueryResult<Toilet> {
    use crate::schema::toilets::dsl::*;
    toilets.filter(id.eq(id_toilet)).first::<Toilet>(conn)
}

pub fn get_toilets(conn: &mut PgConnection) -> QueryResult<Vec<Toilet>> {
    use crate::schema::toilets::dsl::*;
    toilets.load::<Toilet>(conn)
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

pub fn update_door_state(pool: Pool<ConnectionManager<PgConnection>>, toilet_id: Uuid) -> QueryResult<Toilet> {
    use crate::schema::toilets::dsl::*;
    let mut conn = pool.get().map_err(|e| {
        error!("Failed to get database connection: {}", e);  // Log connection error
        diesel::result::Error::DatabaseError(diesel::result::DatabaseErrorKind::Unknown, Box::new(e.to_string()))
    })?;

    info!("Attempting to find toilet with id {}", toilet_id);
    let target = toilets.filter(id.eq(toilet_id)).first::<Toilet>(&mut conn).map_err(|e| {
        error!("Failed to find toilet with id {}: {}", toilet_id, e);  // Log retrieval error
        e
    })?;

    if target.is_maintenance {
        error!("Toilet with id {} is in maintenance", toilet_id);
        return Err(diesel::result::Error::NotFound);
    }

    info!("Toilet found: {:?}", target);  // Log the found toilet

    // Determine the new state for door_is_open
    let new_door_state = !target.door_is_open;
    let action = if new_door_state { "opening" } else { "closing" };

    info!("Scheduling door {} for toilet with id {} in 5 seconds", action, toilet_id);

    // Schedule the door state change after 3 seconds
    actix_rt::spawn({
        let pool = pool.clone();
        async move {
            sleep(Duration::from_secs(3)).await;
            let mut conn = pool.get().unwrap();
            diesel::update(toilets.find(toilet_id))
                .set(door_is_open.eq(new_door_state))
                .execute(&mut conn)
                .unwrap();
            info!("Door state updated to {} for toilet with id {}", if new_door_state { "open" } else { "closed" }, toilet_id);  // Log update
        }
    });

    Ok(target)
}

pub fn toggle_lock_state(pool: Pool<ConnectionManager<PgConnection>>, toilet_id: Uuid) -> QueryResult<Toilet> {
    use crate::schema::toilets::dsl::*;
    let mut conn = pool.get().map_err(|e| {
        diesel::result::Error::DatabaseError(diesel::result::DatabaseErrorKind::Unknown, Box::new(e.to_string()))
    })?;

    let target = toilets.filter(id.eq(toilet_id)).first::<Toilet>(&mut conn)?;

    let new_lock_state = !target.is_locked;

    diesel::update(toilets.find(toilet_id))
        .set(is_locked.eq(new_lock_state))
        .execute(&mut conn)?;

    let updated_toilet = toilets.filter(id.eq(toilet_id)).first::<Toilet>(&mut conn)?;
    Ok(updated_toilet)
}