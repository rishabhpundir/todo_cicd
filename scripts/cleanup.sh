#!/bin/bash

echo "********Kubenetes Setup starts!********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

/usr/local/bin/minikube status

# /usr/local/bin/minikube start

/usr/local/bin/kubectl delete deployment.apps/todocicd-deploy  deployment.apps/postgres  service/db  service/todocicd-service 

/usr/local/bin/minikube ssh "docker rmi -f todocicd"

/usr/local/bin/minikube ssh "docker images"

/usr/local/bin/minikube image load todocicd:latest

/usr/local/bin/minikube image load todonginx:latest

echo "********Kubernetes Setup Finishes!********"