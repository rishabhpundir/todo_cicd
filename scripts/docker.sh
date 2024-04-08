#!/bin/bash

echo "********Docker Compose starts********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

echo "-------$PWD-------"

docker rmi -f todocicdapp:latest

# docker tag todocicdapp:latest rishabhpundir/todocicdapp:latest

docker compose --env-file .env build

docker push rishabhpundir/todocicdapp:latest

echo "-------Current images-------"

docker images

echo "-------Current Containers-------"

docker ps -a

echo "********Docker finishes********"