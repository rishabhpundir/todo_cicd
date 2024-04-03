#!/bin/bash

echo "********Kubenetes Setup starts!********"

kubectl apply -f todo-deployment.yml
kubectl apply -f todo-service.yml

echo "********Kubernetes Setup Finishes!********"