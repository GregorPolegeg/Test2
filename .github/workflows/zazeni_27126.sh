#!/bin/bash
docker pull $DOCKER_USERNAME/sysa:$GITHUB_SHA
docker run -d $DOCKER_USERNAME/sysa:$GITHUB_SHA
