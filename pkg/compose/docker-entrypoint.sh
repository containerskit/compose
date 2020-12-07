#! /usr/bin/env sh
set -e

while [ ! -S /var/run/docker.sock ]; do
    echo "waiting for docker socket ..."
    sleep 1
done

if [ -f /run/hostname ]; then
    HOSTNAME=$(cat /run/hostname)
    exec HOSTNAME=${HOSTNAME} docker-compose $@
else
    exec docker-compose $@
fi
