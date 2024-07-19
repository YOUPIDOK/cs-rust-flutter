# Sesame
## Students
- Léo Stevenot
- Nathan Poncet
- Robin Coblentz
- Amine Fajry
- Nalvac Atinhounon
- Nadia Schwaller

## Documentation
- [Flutter app](app/README.md)
- [Server API](server/README.md)
- [CI](documentation/ci.md)
- [Keycloack](documentation/keycloack.md)
- [MCD](https://dbdiagram.io/d/CS2-659be7acac844320ae747efc)

# Install
> Install with docker

**Config global .env**
```shell
cp .env.dist .env
```
**Config server env vars**
```shell
cp server/.env.dist .server/env
```
**Config flutter env vars**
```shell
cp app/config.json.dist app/config.json
```
**Up containers**
```shell
docker compose up -d
```
