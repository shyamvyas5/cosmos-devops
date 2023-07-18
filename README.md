# Cosmos-DevOps

This repository is a collection of my cosmos DevOps journey. I'll be putting my progress, code samples, and experiments in this repository.

## Setups

- [Bdjuno Indexer with Gaia chain](./bdjuno-cosmos-docker/README.md): Deploys a blockchain explorer using Docker Compose, which allows for visualization and analysis of blockchain data and other services are setup like Postgres in which bdjuno stores data, hasura graphql, running migrations and updating metadata, etc.

- [Blockpane Tenderduty monitoring with Gaia chain](./blockpane-tenderduty-docker/README.md): Sets up a Gaia chain with single node alongwith TenderDuty which is a monitoring and alerting tool for Cosmos Gaia blockchain networks.

- [Hermes Relayer Gaia-Mantle Chain](./hermes-cosmos-docker/README.md): Creates an IBC relayer across Mantle chain and Gaia chain.

- [Horcrux MPC signer with Gaia chain](./horcrux-cosmos-docker/README.md): Sets up Horcrux cluster in docker compose file.

- [TMKMS signer with Gaia chain](./tmkms-cosmos-docker/README.md): Sets up TMKMS signers for multi-signature functionality in docker compose file.

Each scenario directory contains a detailed README file that provides instructions on how to set up and use the Docker Compose configuration for that specific scenario.

## Usage

1. Clone this repository and navigate to the desired scenario directory.
2. Follow the instructions in the respective README file to start the Docker Compose services.
3. Access the deployed services or integrate them into your web3 development workflow as needed.
4. To stop the services, use the appropriate `docker-compose down` command as mentioned in each scenario's README file.
