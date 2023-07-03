## blockpane-tenderduty-docker
---
1. Run docker compose file using,
    ```
    docker compose up -d node1
    ```

2. At first just starting the node1 container only and not the tenderduty container as we need to change the tenderduty config in order to point tenderduty to our node1, we've to change,
    - chain name under the `chains` section that will be used for labels which needs to be quoted in double quotes
    - "chain_id"
    - "valoper_address"(which we'll get using `gaiad --home /root/node1/.gaia tendermint show-address`)
    - chain endpoint url under the `nodes` section

3. After changing the configuration which is necessary to run tenderduty and listen to the chain node

4. Starting tenderduty using,
    ```
    docker compose up -d tenderduty
    ```

5. Open http://localhost:8888 for tenderduty dashboard and http://localhost:28686/metrics for tenderdity metrics
