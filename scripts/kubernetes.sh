#!/bin/bash

echo "********Kubenetes Setup starts!********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

minikube image load todocicd:latest

minikube image load todonginx:latest

kubectl apply -f postgres.yml

kubectl apply -f todoapp.yml

kubectl port-forward service/todocicd-service  8001:8000

echo "********Kubernetes Setup Finishes!********"