#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull "$DOCKER_REGISTRY_USERNAME/calculator-application:${CODEBUILD_BUILD_NUMBER}"

# Run the Docker image as a container
docker run -d -p 5000:5000 "$DOCKER_REGISTRY_USERNAME/calculator-application:${CODEBUILD_BUILD_NUMBER}"