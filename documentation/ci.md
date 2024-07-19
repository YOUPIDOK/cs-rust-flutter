[Back](../readme.md)

# CI

## Rules
- Push is forbidden on **main** branch
- Min **1 approval is required** for merge pull request on main

## Flutter
- Trigger on merge **pull request**
- Only on **app** dir update

### Jobs
- Test app build
- Unit tests

## Rust
- Trigger on merge **pull request**
- Only on **server** dir update

### Jobs
- Test build
- Unit test
- Build and push [youpidok/cs-rust-flutter:latest](https://hub.docker.com/repository/docker/youpidok/cs-rust-flutter/general) on DuckerHub
