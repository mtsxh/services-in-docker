#!/bin/sh

cd /workdir
echo "Renewing Let's Encrypt Certificates... (`date`)"
docker compose  --env-file /docker_env run --rm --no-TTY --entrypoint certbot certbot renew --no-random-sleep-on-renew
echo "Reloading Nginx configuration"
# docker compose  --env-file /docker_env exec --no-TTY nginx nginx -s reload
docker exec -it nginx nginx -s reload
