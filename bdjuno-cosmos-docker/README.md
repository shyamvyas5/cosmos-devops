## bdjuno-cosmos-docker
---
### NOTE :- Before running docker compose file, need to create gaia_mnemonics.txt and mantle_mnemonics.txt which will contain mnemonics for its respective chain.

1. Run docker compose file using,
    ```
    docker compose up -d
    ```
2. Once containers are running except bdjuno_migration and bdjuno_metadata as they will run the database migration and apply the metadata to hasura and will get stopped, so those containers can be removed and can be commented in docker-compose.yaml file once has been run initially.
