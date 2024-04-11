#!/bin/bash

echo "********Kubenetes Setup starts!********"

/usr/local/bin/kubectl apply -f postgres.yml

/usr/local/bin/kubectl apply -f todoapp.yml

/usr/local/bin/kubectl port-forward service/todocicd-service  8001:8000

echo "********Kubernetes Setup Finishes!********"