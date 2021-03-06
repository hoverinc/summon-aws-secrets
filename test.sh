#!/bin/bash -e

function finish {
  echo 'Removing environment'
  echo '-----'
  docker-compose down -v
}
trap finish EXIT

function main() {
  docker-compose build --pull tester

  docker-compose run --rm \
    tester
}

main
