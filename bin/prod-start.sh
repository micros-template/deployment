#!/bin/sh

./bin/prod-init.sh

export COMPOSE_BAKE=true

cd ./docker
docker compose --env-file ../.env -p dropboks \
  -f docker-compose.gateway.yml \
  -f docker-compose.gateway-prometheus-exp.yml \
  -f docker-compose.auth-svc.yml \
  -f docker-compose.user-svc.yml \
  -f docker-compose.file-svc.yml \
  -f docker-compose.notification-svc.yml \
  up --wait -d --build
