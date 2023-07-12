# Docker Compose Setup for Cosmos Gaia, BDJuno Indexer, Hasura GraphQL Engine, and PostgreSQL

This Docker Compose file sets up a local development environment for running a Web3 application with the following components:

- PostgreSQL: A containerized instance of PostgreSQL database (version 13.5) for data storage.
- Cosmos Gaia: A container running Cosmos SDK-based blockchain node.
- BDJuno: An indexer that collects and processes data from the Cosmos Gaia blockchain, populating a PostgreSQL database with indexed data.
- Hasura GraphQL Engine: A container running Hasura GraphQL Engine that connects to the PostgreSQL database and provides a GraphQL API for querying blockchain data.
- Generate transactions: A container that generates random transactions on the Cosmos Gaia blockchain for testing and development purposes.
- BDJuno Metadata: A container that applies metadata to Hasura, configuring schemas and other metadata for proper functioning.

## Usage

1. Clone the repository and navigate to it.
2. Start the containers by running `docker-compose up -d`.
3. Access the various components:
   - Cosmos Gaia: Accessible at `http://localhost:26657`.
   - BDJuno API: Accessible at `http://localhost:3000`.
   - Hasura GraphQL Engine: Accessible at `http://localhost:8080`.
4. Once containers are running except bdjuno_migration and bdjuno_metadata as they will run the database migration and apply the metadata to hasura and will get stopped, so those containers can be removed and can be commented in docker-compose.yaml file once has been run initially.
5. To stop and remove the containers, run `docker-compose down`.
