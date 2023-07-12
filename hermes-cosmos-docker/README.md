# Docker Compose Setup for Mantle, Gaia, and Hermes

This Docker Compose file sets up a local development environment for running mantle and gaia chains and the Hermes relayer. It includes the following services:

- Mantle Node (mantle-node-1): A container running a Mantle node. It initializes and starts a Mantle blockchain node with specific configurations defined by environment variables. The node is accessible on port 26658.

- Gaia Node (gaia-node-1): A container running a Gaia node. It initializes and starts a Gaia blockchain node with specific configurations defined by environment variables. The node is accessible on port 26657.

- Hermes: A container running the Hermes relayer. Hermes facilitates communication and interoperability between the Mantle and Gaia blockchains. It handles the creation of clients, connections, and channels between the two chains and its configuration is passed in `config.toml` which is volume mounted inside the container at `/root/hermes_config/config.toml`.

### Usage:
1. Clone the repository and navigate to it.
2. Start the containers by running `docker-compose up -d`.
3. Access the components:
   - Mantle Node: Accessible at `http://localhost:26658`.
   - Gaia Node: Accessible at `http://localhost:26657`.
   - Hermes: The Hermes relayer is configured in the container with hermes configuration passed from outside volume mounted file `config.toml`.
4. To stop the containers, run `docker-compose down`.

Please note that the Docker Compose setup includes secrets (`mantle_mnemonics` and `gaia_mnemonics`) which are stored in separate files (`mantle_mnemonics.txt` and `gaia_mnemonics.txt`). Make sure to place the respective mnemonic phrases in the corresponding files before running the setup.
