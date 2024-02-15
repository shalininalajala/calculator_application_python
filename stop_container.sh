#!/bin/bash
set -e

# To print the Container Id of running containers
echo "Hello"
# container_id = 'docker ps | awk -F " " '{print $1}''

# Stop the running container (if any)
# docker rm -f container_id