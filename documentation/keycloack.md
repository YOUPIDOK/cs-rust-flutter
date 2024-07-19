[Back](../readme.md)

# Keycloack
> **Keycloak** is used to authenticate user

> Only **email** and **password** is managed by **keycloak**

## Config
- Config is sync with keycloak thanks to [keycloack dir volumes](../keycloak)

## Commands
**Export Realm**
```shell
docker exec container-id /opt/keycloak/bin/kc.sh export --realm iw_cs_dev --dir /opt/keycloak/data/import
```

## Utils
- [Keycloack Admin](http://localhost:8081/admin/master/console/#/iw_cs_dev)
