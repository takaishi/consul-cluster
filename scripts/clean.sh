#!/bin/bash

docker stop server client_1 client_2
docker rm   server client_1 client_2
docker network rm consul
