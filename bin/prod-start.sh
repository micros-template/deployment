#!/bin/sh

echo "init"
./bin/prod-init.sh

export COMPOSE_BAKE=true

echo "starting"
cd ./docker
docker compose --env-file ../.env -p dropboks \
  -f docker-compose.gateway-prometheus-exp.yml \
  -f docker-compose.auth-svc.yml \
  -f docker-compose.user-svc.yml \
  -f docker-compose.file-svc.yml \
  -f docker-compose.notification-svc.yml \
  up --wait -d --build

# -f docker-compose.gateway.yml \
