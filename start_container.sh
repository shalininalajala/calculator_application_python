#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
docker pull ravisree900/calculator-application

# Run the Docker image as a container
docker run -d -p 5000:5000 ravisree900/calculator-application