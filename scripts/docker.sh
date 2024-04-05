#!/bin/bash

echo "********Docker Compose starts********"

echo "-------$PWD-------"

docker rmi -f rishabhpundir/todocicdapp:latest

# docker tag todocicdapp:latest rishabhpundir/todocicdapp:latest

docker compose build todocicdapp:latest

docker push rishabhpundir/todocicdapp:latest

echo "-------Current images-------"

docker images

echo "-------Current Containers-------"

docker ps -a

echo "********Docker finishes********"