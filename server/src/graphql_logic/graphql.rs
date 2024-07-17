use super::context::GraphQLContext;
use crate::models::user::{CreateUser, ModifyUser, User};
use crate::services::user_service;
use crate::models::toilet::{Toilet, ToiletWithDistance};
use crate::services::toilet_service;
use juniper::{graphql_value, FieldError, FieldResult, GraphQLEnum, GraphQLObject, RootNode, graphql_subscription};
use juniper::futures::Stream;
use std::pin::Pin;
use uuid::Uuid;
use std::time::Duration;
use actix_rt::time::sleep;
use async_stream::stream;

#[derive(Debug, GraphQLObject)]
pub struct DeleteResult {
    pub status: DeleteStatus,
}

#[derive(Debug, GraphQLEnum)]
pub enum DeleteStatus {
    ResourceDeleted,
    NoDeletion,
}

#[derive(Debug, GraphQLObject)]
pub struct UpdateResult {
    pub status: UpdateStatus,
}

#[derive(Debug, GraphQLEnum)]
pub enum UpdateStatus {
    ResourceUpdated,
    NoUpdate,
}

pub struct Query;

#[juniper::graphql_object(Context = GraphQLContext)]
impl Query {
    async fn api_version(context: &GraphQLContext) -> FieldResult<&str> {
        context.authorize().await?;
        FieldResult::Ok("1.0")
    }

    // USER
    pub fn find_user(context: &GraphQLContext, user_id: Uuid) -> FieldResult<Option<User>> {
        let conn = &mut context.pool.get()?;
        let res = user_service::find_user(conn, user_id);
        graphql_translate(res)
    }

    pub async fn find_user_with_keycloak_id(context: &GraphQLContext, keycloak_id: Uuid) -> FieldResult<Option<User>> {
        let conn = &mut context.pool.get()?;
        let res = user_service::find_user_with_keycloak_id(conn, keycloak_id).await;
        match res {
            Ok(t) => Ok(t),
            Err(e) => FieldResult::Err(FieldError::new(e.to_string(), graphql_value!({"database_error": "Impossible"}))),
        }
    }

    // TOILET

    pub fn get_toilet_with_distance(context: &GraphQLContext, id: Uuid, lat: f64, long: f64) -> FieldResult<ToiletWithDistance> {
        let conn = &mut context.pool.get()?;
        let (toilet, distance) = toilet_service::get_toilet_with_distance(conn, id, lat, long)?;
        Ok(ToiletWithDistance { toilet, distance })
    }

    pub fn get_toilet(context: &GraphQLContext, id: Uuid) -> FieldResult<Toilet> {
        let conn = &mut context.pool.get()?;
        let toilet = toilet_service::get_toilet(conn, id)?;
        Ok(toilet)
    }

    pub fn get_toilets(context: &GraphQLContext) -> FieldResult<Vec<Toilet>> {
        let conn = &mut context.pool.get()?;
        let res = toilet_service::get_toilets(conn);
        graphql_translate(res)
    }

    pub fn get_toilet_proche(context: &GraphQLContext, lat: f64, long: f64, radius_km: f64) -> FieldResult<Vec<Toilet>> {
        let conn = &mut context.pool.get()?;
        let res = toilet_service::get_toilet_proche(conn, lat, long, radius_km);
        graphql_translate(res)
    }
}

pub struct Mutation;

#[juniper::graphql_object(Context = GraphQLContext)]
impl Mutation {
    // USER
    pub fn create_user(context: &GraphQLContext, input: CreateUser) -> FieldResult<User> {
        let conn = &mut context.pool.get()?;
        let res = user_service::create_user(conn, input);
        graphql_translate(res)
    }
    pub fn update_user(context: &GraphQLContext, input: ModifyUser) -> FieldResult<User> {
        let conn = &mut context.pool.get()?;
        let res = user_service::update_user(conn, input);
        graphql_translate(res)
    }
    
    pub fn update_door_state(context: &GraphQLContext, id: Uuid) -> FieldResult<Toilet> {
        let pool = context.pool.clone();
        let res = toilet_service::update_door_state(pool, id);
        graphql_translate(res)
    }
}

pub struct Subscription;

#[graphql_subscription(Context = GraphQLContext)]
impl Subscription {
    async fn door_state_updated<'a>(
        context: &'a GraphQLContext,
        id: Uuid,
    ) -> Pin<Box<dyn Stream<Item = FieldResult<Toilet>> + Send + 'a>> {
        let stream = stream! {
            let conn = &mut context.pool.get().unwrap();  // Obtenez une référence mutable ici
            loop {
                let toilet = toilet_service::get_toilet(conn, id)?;  // Passez la référence mutable ici
                yield Ok(toilet);
                sleep(Duration::from_secs(1)).await;
            }
        };
        Box::pin(stream)
    }
}

pub type Schema = RootNode<'static, Query, Mutation, Subscription>;

pub fn create_schema() -> Schema {
    Schema::new(Query {}, Mutation {}, Subscription {})
}

fn graphql_translate<T>(res: Result<T, diesel::result::Error>) -> FieldResult<T> {
    match res {
        Ok(t) => Ok(t),
        Err(e) => FieldResult::Err(FieldError::from(e)),
    }
}
