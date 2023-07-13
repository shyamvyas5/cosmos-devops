#!/bin/sh

set -euxo

SEQUENCE=1

while true;
do
    # generating key
    RANDOM_CHARS=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)
    gaiad --home $NODE1_HOME keys add test$RANDOM_CHARS --keyring-backend test

    # get address in ADDR variable
    ADDR=$(gaiad --home $NODE1_HOME keys show test$RANDOM_CHARS -a --keyring-backend test)

    # sending 1atom from test to the $ADDR
    gaiad --home $NODE1_HOME tx bank send test $ADDR 1atom --keyring-backend test --chain-id $CHAIN_ID --home $NODE1_HOME --sequence $SEQUENCE --node http://node1:26657 -y

    # INDEX=$(( INDEX + 1))
    SEQUENCE=$(( SEQUENCE + 1))

    # sleep 1
done
