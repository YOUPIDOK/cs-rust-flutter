# Sesame
## Students
- Léo Stevenot
- Nathan Poncet
- Robin Coblentz
- Amine Fajry
- Nalvac Atinhounon
- Nadia Schwaller 
## Install
**Config .env**
```shell
cp .env.dist .env
```
**Config server/.env**
```shell
cp server/.env.dist .server/env
**Config app/config.json**
```shell
cp app/config.json.dist app/config.json
```
**Up containers**
```shell
docker compose up -d
```
## Ci/CD
On push/pull request event on main :
- Test rust build
- Test flutter build