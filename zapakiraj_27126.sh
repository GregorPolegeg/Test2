#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DOCKER_USERNAME/sysa:$GITHUB_SHA .
docker push $DOCKER_USERNAME/sysa:$GITHUB_SHA
