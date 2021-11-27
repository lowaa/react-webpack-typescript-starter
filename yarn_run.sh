#!/bin/bash
# Run yarn commands dockerised but working on files mounted in from the
# host file system.
# It is very slow on MacOS. Probably by 5x or 6x. It would be good to
# try on linux
set -x -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
pushd "${DIR}"

function finish() {
  popd
}
trap finish EXIT

source ./common.sh

# Run!
docker-compose build

case "${1}" in
  start-dev)
    if [ -z "${WEBSERVER_PORT}" ]; then
      export WEBSERVER_PORT=8080
    fi
    ;;
esac

${DOCKER_COMPOSE} yarn run "$@"
