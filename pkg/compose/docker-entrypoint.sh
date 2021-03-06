#! /usr/bin/env sh
set -e

while [ ! -S /var/run/docker.sock ]; do
    echo "waiting for docker socket ..."
    sleep 1
done

HOSTNAME=$(hostname)
exec env HOSTNAME=${HOSTNAME} docker-compose $@
