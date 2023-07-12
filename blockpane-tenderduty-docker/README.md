# blockpane-tenderduty-docker

- Gaia chain (node1): A container running a Gaia chain. It initializes and starts a Cosmos Gaia blockchain node with specific configurations defined by environment variables. The node is accessible on port 26657.
- TenderDuty: A container running TenderDuty, a monitoring and alerting tool for Cosmos Gaia blockchain networks. It provides a dashboard accessible on port 8888 and a Prometheus exporter on port 28686.

## Usage

1. Run docker compose file using,
    ```
    docker compose up -d node1
    ```

2. At first just starting the node1 container only and not the tenderduty container as we need to change the tenderduty config in order to point tenderduty to our node1, we've to change,
    - chain name under the `chains` section that will be used for labels which needs to be quoted in double quotes
    - "chain_id"
    - "valoper_address"(which we'll get using `gaiad --home /root/node1/.gaia tendermint show-address`)
    - chain endpoint url under the `nodes` section

3. After changing the configuration which is necessary to run tenderduty and listen to the chain node.

4. Starting tenderduty using,
    ```
    docker compose up -d tenderduty
    ```

5. Access the components:
   - Gaia Node: Accessible at `http://localhost:26657`.
   - TenderDuty Dashboard: Accessible at `http://localhost:8888`.
   - TenderDuty Prometheus Exporter: Accessible at `http://localhost:28686`.

6. To stop the containers, run `docker-compose down`.

Please note that the configuration for TenderDuty is provided in the `blockpane-tenderduty-config.yaml` file.
