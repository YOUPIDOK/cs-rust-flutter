use super::context::GraphQLContext;
use crate::models::comment::Comment;
use crate::models::user::{CreateUser, ModifyUser, User};
use crate::services::{comment_service, user_service};
use crate::models::toilet::{Toilet, ToiletWithDistance};
use crate::services::toilet_service;
use juniper::{graphql_value, FieldError};
use juniper::{EmptySubscription, FieldResult, GraphQLEnum, GraphQLObject, RootNode};
use uuid::Uuid;

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
    // Note, that the field name will be automatically converted to the
    // `camelCased` variant, just as GraphQL conventions imply.
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

    /// ### Example de requête GraphQL
    ///
    /// ```graphql
    /// {
    ///     getToiletProche(lat: 34.886306, long: 134.37971, radiusKm: 5.0) {
    ///     id,
    ///     lat,
    ///     long,
    ///     name,
    ///     companiesId,
    ///     isMaintenance
    ///   }
    /// }
    /// ```
    pub async fn get_toilet_proche(context: &GraphQLContext, lat: f64, long: f64, radius_km: f64) -> FieldResult<Vec<Toilet>> {
        let conn = &mut context.pool.get()?;
        let res = toilet_service::get_toilet_proche(conn, lat, long, radius_km);
        graphql_translate(res)
    }

        // TOILET

     /// ### Example de requête GraphQL
    /// La distance retournée est en **Km**
    ///
    /// ```graphql
    /// {
    ///        getToilet(id: "some-uuid", lat: 48.8566, long: 2.3522) {
    ///            toilet {
    ///            id
    ///            name
    ///            lat
    ///            long
    ///            price
    ///            }
    ///            distance
    ///        }
    /// }
    /// ```
    pub fn get_toilet(context: &GraphQLContext, id: Uuid, lat: f64, long: f64) -> FieldResult<ToiletWithDistance> {
        let conn = &mut context.pool.get()?;
        let (toilet, distance) = toilet_service::get_toilet(conn, id, lat, long)?;
        Ok(ToiletWithDistance { toilet, distance })
    }

    /// ### Example de requête GraphQL
    ///
    /// ```graphql
    /// {
    ///     getToilets{
    ///     id,
    ///     lat,
    ///     long,
    ///     name,
    ///     companiesId,
    ///     isMaintenance
    ///   }
    /// }
    /// ```
    pub async  fn get_toilets(context: &GraphQLContext) -> FieldResult<Vec<Toilet>> {
        let conn = &mut context.pool.get()?;
        let res = toilet_service::get_toilets(conn);
        graphql_translate(res)
    }

    /// ### Example de requête GraphQL
    ///
    /// ```graphql
    ///    {
    ///        getCommentsByToilet(toiletIdFilter: "UUID") {
    ///            id
    ///            toiletId
    ///            userId
    ///            note
    ///            comment
    ///            createdAt
    ///       }
    ///    }
    /// ```
    pub fn get_comments_by_toilet(context: &GraphQLContext, toilet_id_filter: Uuid) -> FieldResult<Vec<Comment>> {
        let conn = &mut context.pool.get()?;
        let res = comment_service::get_comments_by_toilet(conn, toilet_id_filter);
        graphql_translate(res)
    }

        /// ### Example de requête GraphQL
    ///
    /// ```graphql
    /// {
    ///     getCommentsByUser() {
    ///         id
    ///         toiletId
    ///         userId
    ///         note
    ///         comment
    ///         createdAt
    ///   }
    /// }
    /// ```
    pub async fn get_comments_by_user(context: &GraphQLContext) -> FieldResult<Vec<Comment>> {
        let user = context.authorize().await?;
        let conn = &mut context.pool.get()?;
        let res = comment_service::get_comments_by_user(conn, user.id);
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
}

pub type Schema = RootNode<'static, Query, Mutation, EmptySubscription<GraphQLContext>>;

pub fn create_schema() -> Schema {
    Schema::new(Query {}, Mutation {}, EmptySubscription::new())
}

fn graphql_translate<T>(res: Result<T, diesel::result::Error>) -> FieldResult<T> {
    match res {
        Ok(t) => Ok(t),
        Err(e) => FieldResult::Err(FieldError::from(e)),
    }
}
