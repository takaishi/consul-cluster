#!/bin/bash

NETWORK=$(docker network create consul)

docker run -d --name server --network ${NETWORK} -p 8500:8500/tcp -p 8600:8600/tcp consul agent -server -node server -ui -client 0.0.0.0 -bootstrap-expect 1

docker run -d --name client_1 --network ${NETWORK} consul_client agent -node client_1 -ui -retry-join consul_server
docker run -d --name client_2 --network ${NETWORK} consul_client agent -node client_2 -ui -retry-join consul_server
