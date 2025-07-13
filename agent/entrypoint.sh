#!/bin/bash

set -e

# Запуск Docker daemon у фоні
dockerd --host=unix:///var/run/docker.sock --storage-driver=vfs &

# Очікування готовності Docker
while ! docker info >/dev/null 2>&1; do
    echo "Waiting for Docker daemon to start..."
    sleep 1
done

# Запуск Jenkins-агента під користувачем jenkins
#exec /usr/local/bin/jenkins-agent "$@"
exec su -s /bin/bash jenkins -c "/usr/local/bin/jenkins-agent $*"