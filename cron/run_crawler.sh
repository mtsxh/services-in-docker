#!/bin/sh

cd /workdir
echo "Run crawler ..."
docker compose run --rm --no-TTY --entrypoint crawler /app/run.sh
echo "Reloading Nginx configuration for crawler ..."
docker compose exec --no-TTY nginx nginx -s reload
