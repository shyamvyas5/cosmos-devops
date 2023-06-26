## horcrux-cosmos-docker
---
1. Run docker compose file using,
    ```
    docker compose up -d
    ```
2. Check the logs
3. Once all of the signer nodes are started it'll throw errors initially and for that we've to gradually restart node1, node2 and node3 because we've set the "priv_validator_laddr" in all of the nodes config.toml for tendermint to listen on for an external validator process
4. Once restarted node1, node2 and node3, the horcrux signer nodes will sign the blocks and will be the validator
