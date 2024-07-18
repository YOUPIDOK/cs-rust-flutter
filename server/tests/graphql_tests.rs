use reqwest;
use serde_json::json;
use tokio;
use uuid::Uuid;

#[tokio::test]
async fn test_graphql_query() {
    let client = reqwest::Client::new();

    let query = r#"
        {
            getToilets {
                id
                lat
                long
                name
                companiesId
                isMaintenance
            }
        }
    "#;

    let response = client
        .post("http://0.0.0.0:8000/graphql")
        .json(&json!({ "query": query }))
        .send()
        .await
        .expect("Failed to send request");

    assert!(response.status().is_success(), "Request was not successful");

    let json: serde_json::Value = response
        .json()
        .await
        .expect("Failed to parse response as JSON");

    let toilets = &json["data"]["getToilets"];
    assert!(toilets.is_array(), "getToilets is not an array");

    let first_toilet = &toilets[0];
    assert!(Uuid::parse_str(&first_toilet["id"].as_str().unwrap()).is_ok(), "id should be a valid UUID");
    assert!(first_toilet["lat"].is_number(), "lat should be a number");
    assert!(first_toilet["long"].is_number(), "long should be a number");
    assert!(first_toilet["name"].is_string(), "name should be a string");
    assert!(Uuid::parse_str(&first_toilet["companiesId"].as_str().unwrap()).is_ok(), "companiesId should be a valid UUID");
}
