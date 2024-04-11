#!/bin/bash

echo "********Kubenetes Setup starts!********"

cd /var/lib/jenkins/workspace/TodoCICDPipeline

/usr/local/bin/minikube image load todocicd:latest

/usr/local/bin/minikube image load todonginx:latest

/usr/local/bin/kubectl apply -f postgres.yml

/usr/local/bin/kubectl apply -f todoapp.yml

/usr/local/bin/kubectl port-forward service/todocicd-service  8001:8000

echo "********Kubernetes Setup Finishes!********"