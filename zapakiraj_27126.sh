#!/bin/bash
echo "${DOCKER_ACCESS_TOKEN}" | docker login --username "${DOCKER_USERNAME}" --password-stdin

# Zgradite sliko s SHA vrednostjo trenutnega commit-a
docker build -t "${DOCKER_USERNAME}/sysa:${GITHUB_SHA}" .
# Potisnite sliko s SHA vrednostjo na DockerHub
docker push "${DOCKER_USERNAME}/sysa:${GITHUB_SHA}"

# Zgradite sliko s oznako "latest"
docker build -t "${DOCKER_USERNAME}/sysa:latest" .
# Potisnite sliko s oznako "latest" na DockerHub
docker push "${DOCKER_USERNAME}/sysa:latest"
