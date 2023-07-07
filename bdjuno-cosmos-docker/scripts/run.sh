#!/bin/sh

set -euxo

lockname=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 20 | head -n 1)
semaphore create --name ${lockname} --size 10

while true; do
  # generating key
  RANDOM_CHARS=$(cat /dev/urandom | tr -dc 'a-zA-Z' | fold -w 10 | head -n 1)
  gaiad --home $NODE1_HOME keys add test$RANDOM_CHARS --keyring-backend test

  # get address in ADDR variable
  ADDR=$(gaiad --home $NODE1_HOME keys show test$RANDOM_CHARS -a --keyring-backend test)

  (
    semaphore acquire --name ${lockname}
    # sending 1uatom from test to the $ADDR
    gaiad --home $NODE1_HOME tx bank send test $ADDR 1uatom --keyring-backend test --chain-id $CHAIN_ID --home $NODE1_HOME -b block --node http://node1:26657 -y
    semaphore release --name ${lockname}
  ) &
done
