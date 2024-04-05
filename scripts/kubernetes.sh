#!/bin/bash

echo "********Kubenetes Setup starts!********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

kubectl apply -f todo-deployment.yml

kubectl apply -f todo-service.yml

echo "********Kubernetes Setup Finishes!********"