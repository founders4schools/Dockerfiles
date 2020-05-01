#!/bin/bash
set -e

docker login -u "${DOCKER_USERNAME}" -p "${DOCKER_PASSWORD}" docker.io

docker build -t foundersforschools/dockerfiles:${TAG} ${TAG}
docker push foundersforschools/dockerfiles:${TAG}
