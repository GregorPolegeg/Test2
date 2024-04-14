#!/bin/bash
echo "$DOCKER_ACCESS_TOKEN" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker build -t $DOCKER_USERNAME/sysa:$GITHUB_SHA .
docker push $DOCKER_USERNAME/sysa:$GITHUB_SHA

docker build -t $DOCKER_USERNAME/sysa:latest .
docker push $DOCKER_USERNAME/sysa:latest
