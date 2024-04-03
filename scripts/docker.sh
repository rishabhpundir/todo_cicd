#!/bin/bash

echo "********Docker Compose starts********"

echo "-------$PWD-------"

docker rmi -f todocicdapp

docker compose build

echo "-------Current images-------"

docker images

echo "-------Current Containers-------"

docker ps -a

echo "********Docker finishes********"