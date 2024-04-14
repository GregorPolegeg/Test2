#!/bin/bash

# Check required variables
if [ -z "$DOCKER_USERNAME" ] || [ -z "$DOCKER_ACCESS_TOKEN" ] || [ -z "$GITHUB_SHA" ]; then
  echo "Error: One or more required environment variables are missing."
  exit 1
fi

# Login to Docker Hub
echo "${DOCKER_ACCESS_TOKEN}" | docker login --username "${DOCKER_USERNAME}" --password-stdin

# Build and push image with commit SHA tag
docker build -t "${DOCKER_USERNAME}/sysa:${GITHUB_SHA}" .
docker push "${DOCKER_USERNAME}/sysa:${GITHUB_SHA}"

# Build and push image with 'latest' tag
docker build -t "${DOCKER_USERNAME}/sysa:latest" .
docker push "${DOCKER_USERNAME}/sysa:latest"
