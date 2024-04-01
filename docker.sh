#!/bin/bash

echo "********Docker Compose starts********"
echo "-------$PWD-------"
docker compose build
docker compose up -d
echo "********Docker container finishes********"