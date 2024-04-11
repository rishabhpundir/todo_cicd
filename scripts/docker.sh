#!/bin/bash

echo "********Docker Compose starts********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

echo "-------$PWD-------"

docker rmi -f todocicd:latest

docker rmi -f todonginx:latest

docker build -t todocicd:latest .

docker build -t todonginx:latest nginx/

# docker push rishabhpundir/todocicd:latest

echo "-------Current images-------"

docker images

echo "********Docker finishes********"