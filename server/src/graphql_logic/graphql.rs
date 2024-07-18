// use crate::graphql_logic::context::GraphQLContext;
use super::context::GraphQLContext;
use crate::models::comment::{Comment, CreateComment};
use crate::services::{comment_service, user_service};
use crate::models::toilet::{Toilet, ToiletWithDistance};
use crate::models::user::{CreateUser, ModifyUser, User};
use crate::services::toilet_service;
use juniper::futures::Stream;
use juniper::{graphql_subscription, graphql_value, FieldError, FieldResult, GraphQLEnum, GraphQLObject, RootNode};
use std::pin::Pin;
use uuid::Uuid;
use std::time::Duration;
use async_std::task::sleep;
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

    /// ### Exemple de requête GraphQL
    /// La distance retournée est en **Km**
    ///
    /// ```graphql
    /// {
    ///        getToiletWithDistance(id: "some-uuid", lat: 48.8566, long: 2.3522) {
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
    pub fn get_toilet_with_distance(context: &GraphQLContext, id: Uuid, lat: f64, long: f64) -> FieldResult<ToiletWithDistance> {
        let conn = &mut context.pool.get()?;
        let (toilet, distance) = toilet_service::get_toilet_with_distance(conn, id, lat, long)?;
        Ok(ToiletWithDistance { toilet, distance })
    }

    /// ### Exemple de requête GraphQL
    ///
    /// ```graphql
    /// {
    ///        getToilet(id: "some-uuid") {
    ///            id
    ///            name
    ///            lat
    ///            long
    ///            price
    ///            isMaintenance
    ///        }
    /// }
    /// ```
    pub fn get_toilet(context: &GraphQLContext, id: Uuid) -> FieldResult<Toilet> {
        let conn = &mut context.pool.get()?;
        let toilet = toilet_service::get_toilet(conn, id)?;
        Ok(toilet)
    }

    /// ### Exemple de requête GraphQL
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

    // COMMENT

    /// ### Exemple de requête GraphQL
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

    // TOILET

    /// ### Information
    /// Ouvre ou ferme la porte. Si un toilet est en maintenance dans docker on reçoit ca: 
    /// cs-rust-flutter-back-1| [2024-07-18T15:01:51Z ERROR server::services::toilet_service] Toilet with id c7748088-444f-44b9-8d13-d1f4d4906ee7 is in maintenance
    /// ### Exemple de requête GraphQL
    ///
    /// ```graphql
    ///        mutation {
    ///                updateDoorState(id: "UUID") {
    ///                id
    ///                isMaintenance
    ///                doorIsOpen
    ///                }
    ///            }
    /// ```
    pub fn update_door_state(context: &GraphQLContext, id: Uuid) -> FieldResult<Toilet> {
        let pool = context.pool.clone();
        let res = toilet_service::update_door_state(pool, id);
        graphql_translate(res)
    }

    /// ### Information
    /// Ouvre ou ferme A CLE les toilettes
    /// ### Exemple de requête GraphQL
    ///
    /// ```graphql
    ///        mutation {
    ///                toggleLockState(id: "UUID") {
    ///                id
    ///                isMaintenance
    ///                isLocked
    ///                }
    ///            }
    /// ```
    pub fn toggle_lock_state(context: &GraphQLContext, id: Uuid) -> FieldResult<Toilet> {
        let pool = context.pool.clone();
        let res = toilet_service::toggle_lock_state(pool, id);
        graphql_translate(res)
    }

    // COMMENT

    /// ### Exemple de requête GraphQL
    ///
    // mutation {
    //     createComment(input: {
    //       toiletId: "1c41d9e3-08bf-47c1-9a71-17c8897678d7",
    //       note: 4.5,
    //       comment: "Clean and well-maintained!"
    //     }) {
    //       id
    //       toiletId
    //       userId
    //       note
    //       comment
    //       createdAt
    //     }
    //   }
    pub async fn create_comment(context: &GraphQLContext, input: CreateComment) -> FieldResult<Comment> {
        let user: User = context.authorize().await?;
        let conn = &mut context.pool.get()?;
        let res = comment_service::create_comment(conn, input, user.id);
        graphql_translate(res)
    }
}

type StringStream = Pin<Box<dyn Stream<Item = Result<String, FieldError>> + Send>>;
type ToiletStream = Pin<Box<dyn Stream<Item = FieldResult<Toilet>> + Send>>;

pub struct Subscription;

#[graphql_subscription]
#[graphql(context = GraphQLContext)]
impl Subscription {
    async fn hello_world() -> StringStream {
        let stream = futures::stream::iter([Ok(String::from("Hello")), Ok(String::from("World!"))]);
        Box::pin(stream)
    }

    /// ### Information
    /// Le code écoute tout le temps le toilette mais n'envoie une réponse que quand la porte change
    /// ### Exemple de requête GraphQL
    ///
    /// ```graphql
    ///     subscription {
    ///         doorStateUpdated(id: "some-uuid") {
    ///           id
    ///           isMaintenance
    ///           doorIsOpen
    ///           isLocked
    ///           name
    ///           lat
    ///           long
    ///           price
    ///           companiesId
    ///         }
    ///       }
    /// ```
    async fn door_state_updated(
        context: &GraphQLContext,
        id: Uuid,
    ) -> ToiletStream {
        let pool = context.pool.clone();
        let stream = stream! {
            let mut previous_state: Option<bool> = None;
            loop {
                let conn = &mut pool.get().unwrap();
                let toilet = toilet_service::get_toilet(conn, id);

                match toilet {
                    Ok(toilet) => {
                        let door_is_open = toilet.door_is_open;  // Extract the value before moving

                        // Check if the state has changed
                        if previous_state.is_none() || previous_state != Some(door_is_open) {
                            yield Ok(toilet);
                            previous_state = Some(door_is_open);
                        }
                    },
                    Err(e) => {
                        yield Err(FieldError::new(e.to_string(), graphql_value!({"database_error": "Impossible"})));
                        break;
                    },
                }
                
                // Sleep for a short period before checking again
                sleep(Duration::from_secs(1)).await;
            }
        };
        Box::pin(stream)
    }
}

pub type Schema = RootNode<'static, Query, Mutation, Subscription>;

pub fn schema() -> Schema {
    Schema::new(Query {}, Mutation {}, Subscription {})
}

fn graphql_translate<T>(res: Result<T, diesel::result::Error>) -> FieldResult<T> {
    match res {
        Ok(t) => Ok(t),
        Err(e) => FieldResult::Err(FieldError::from(e)),
    }
}
