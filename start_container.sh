#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "$DOCKER_REGISTRY_PASSWORD" | docker login -u "$DOCKER_REGISTRY_USERNAME" --password-stdin "$DOCKER_REGISTRY_URL"
docker pull "$DOCKER_REGISTRY_USERNAME/calculator-application:${CODEBUILD_BUILD_NUMBER}"
# docker pull ravisree900/calculator-application:2

# Run the Docker image as a container
docker run -d -p 5000:5000 "$DOCKER_REGISTRY_USERNAME/calculator-application:${CODEBUILD_BUILD_NUMBER}"
# docker run -d -p 5000:5000 ravisree900/calculator-application:2
