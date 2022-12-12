#!/bin/sh

cd /workdir
echo "Run crawler ..."
docker compose  --env-file ../docker_env run --rm --no-TTY crawler /app/run.sh
echo "Reloading Nginx configuration for crawler ..."
docker compose  --env-file ../docker_env exec --no-TTY nginx nginx -s reload
