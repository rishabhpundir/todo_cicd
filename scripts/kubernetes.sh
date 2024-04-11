#!/bin/bash

echo "********Kubenetes Setup starts!********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

env

/usr/local/bin/minikube status

# /usr/local/bin/minikube start

/usr/local/bin/kubectl delete deployment.apps/todocicd-deploy  deployment.apps/postgres  service/db  service/todocicd-service 

/usr/local/bin/minikube ssh "docker rmi -f todocicd:latest"

/usr/local/bin/minikube ssh "docker images"

/usr/local/bin/minikube image load todocicd:latest

/usr/local/bin/minikube image load todonginx:latest

/usr/local/bin/kubectl apply -f postgres.yml

/usr/local/bin/kubectl apply -f todoapp.yml

/usr/local/bin/kubectl port-forward service/todocicd-service  8001:8000

echo "********Kubernetes Setup Finishes!********"