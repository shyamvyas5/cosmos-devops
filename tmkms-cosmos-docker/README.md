# Docker Compose Setup for Gaia Nodes and TMKMS Signer

This Docker Compose file sets up a local development environment with multiple Gaia nodes and a TMKMS signer. It includes the following services:

## Gaia Nodes:
- node1: Represents the first Gaia node. It initializes and starts a Gaia blockchain node with specific configurations in which we are changing `priv_validator_laddr` which will be further used by tmkms client to sign chain blocks. It is accessible on port 26657. It also performs some additional configuration tasks such as setting persistent peers and modifying the genesis file.

- node2: Represents the second Gaia node. It has similar configurations as node1 and establishes a connection with node1 and node3 by using its node ID in persistent_peers and copying the genesis json file from node1.

- node3: Represents the third Gaia node. It also has similar configurations as node1 and establishes a connection with node1 and node2 by using its node ID in persistent_peers and copying the genesis json file from node1.

## TMKMS Signer:
- signer1: Represents the TMKMS signer, which is used for signing consensus messages. It initializes the signer with a specific configuration. It is associated with node1 and uses its private key for signing the chain blocks. It first imports the node1's private key into softsign through which further signs chains blocks

### Usage:
1. Clone the repository and navigate to it.
2. Start the containers by running `docker-compose up -d`.
3. At first the tmkms-signer will throw error as validator-node(node1) hasn't come up yet, once validator node comes up, tmkms-signer will be connected to validator node.
4. To stop the containers, run `docker-compose down`.

Please note that this Docker Compose setup includes volumes for storing chain data and signer data, which are specified under the `volumes` section. The configuration for each Gaia node and the signer is defined using environment variables and command scripts.
