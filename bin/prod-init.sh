#!/bin/bash

if [[ $(basename "$PWD") == "bin" ]]; then
  echo "Run this from project root!!"
  exit 1
fi

export COMPOSE_BAKE=true

cd ./docker
docker compose --env-file ../.env -p dropboks \
  -f docker-compose.db.init.yml \
  -f docker-compose.db-prometheus-exp.init.yml \
  -f docker-compose.minio.init.yml \
  -f docker-compose.nats.init.yml \
  -f docker-compose.nats-prometheus-exp.init.yml \
  -f docker-compose.redis.init.yml \
  -f docker-compose.redis-prometheus-exp.init.yml \
  -f docker-compose.grafana.init.yml \
  -f docker-compose.prometheus.init.yml \
  up --wait -d --build
