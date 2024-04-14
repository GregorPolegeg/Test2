#!/bin/bash

# Define variables
DOCKER_USERNAME="gregorpolegeg"
REPO_NAME="sysa"
TAG="latest"

# Pull the latest image from Docker Hub
docker pull $DOCKER_USERNAME/$REPO_NAME:$TAG

# Run the container from the pulled image
docker run -d --name sysa_container $DOCKER_USERNAME/$REPO_NAME:$TAG

# Print a completion message
echo "Container sysa_container is running using image $DOCKER_USERNAME/$REPO_NAME:$TAG"
