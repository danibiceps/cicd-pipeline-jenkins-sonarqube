#!/bin/bash
IMAGE=myapp:latest
echo "Scanning Docker image with Trivy: $IMAGE"
docker exec -i $(docker ps -qf "ancestor=aquasec/trivy") trivy image $IMAGE