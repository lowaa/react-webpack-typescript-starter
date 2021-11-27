#!/bin/bash

CURRENT_UID=$(id -u):$(id -g)
export CURRENT_UID

DOCKER_COMPOSE="docker-compose run --service-ports web"

echo "Docker compose cmd is: ${DOCKER_COMPOSE}"

