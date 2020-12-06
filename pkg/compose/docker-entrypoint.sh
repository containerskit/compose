#! /usr/bin/env sh

while [ ! -S /var/run/docker.sock ]; do
    echo "waiting for docker socket ..."
    sleep 1
done

exec docker-compose
