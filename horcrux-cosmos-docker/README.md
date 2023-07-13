# Docker Compose Setup for Gaia Nodes and Horcrux Signers

This Docker Compose file sets up a local development environment with multiple Gaia nodes and Horcrux signers. It includes the following services:

## Gaia Nodes:
- node1: Represents the first Gaia node. It initializes and starts a Gaia blockchain node with specific configurations. It is accessible on port 26657. It also performs some additional configuration tasks such as setting persistent peers and copying the genesis file.

- node2: Represents the second Gaia node. It has similar configurations as node1 and establishes a connection with node1 and node3 by using its node ID in persistent_peers and copying the genesis json file from node1.

- node3: Represents the third Gaia node. It also has similar configurations as node1 and establishes a connection with node1 and node2 by using its node ID in persistent_peers and copying the genesis json file from node1.

## Horcrux Signers:
- signer-init: Initializes the Horcrux signer. It creates the initial configuration for Horcrux. It also generates RSA keys and shards of the validator private key. It copies the config and state to other signers and updates the validation address on all nodes.

- signer1, signer2, signer3: Represent the Horcrux signers. They start the Horcrux signing process.

### Usage:
1. Clone the repository and navigate to it.
2. Start the containers by running `docker-compose up -d`.
3. Check the logs.
4. Once all of the signer nodes are started it'll throw errors initially and for that we've to gradually restart node1, node2 and node3 because we've set the "priv_validator_laddr" in all of the nodes config.toml for tendermint to listen on for an external validator process.
5. Once restarted node1, node2 and node3, the horcrux signer nodes will sign the blocks and will be the validator
6. To stop the containers, run `docker-compose down`.

Please note that this Docker Compose setup includes volumes for storing chain data and signer data, which are specified under the `volumes` section. The configuration for each Gaia node and signer is defined using environment variables and command scripts.
