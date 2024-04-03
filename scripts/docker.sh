#!/bin/bash

echo "********Docker Compose starts********"

echo "-------$PWD-------"

docker rmi -f rishabhpundir/todocicdapp

docker compose build . -t rishabhpundir/todocicdapp

echo "-------Current images-------"

docker images

echo "-------Current Containers-------"

docker ps -a

echo "********Docker finishes********"