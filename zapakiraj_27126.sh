#!/bin/bash
echo "$DOCKER_ACCESS_TOKEN" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker build -t $DOCKER_USERNAME/sysa:$GITHUB_SHA . --password-stdin
docker push $DOCKER_USERNAME/sysa:$GITHUB_SHA --password-stdin
docker build -t $DOCKER_USERNAME/sysa:latest . --password-stdin
docker push $DOCKER_USERNAME/sysa:latest --password-stdin
