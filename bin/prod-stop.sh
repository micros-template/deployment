#!/bin/sh
if [[ $(basename "$PWD") == "bin" ]]; then
  echo "Run this from project root!!"
  exit 1
fi

cd ./docker
docker compose --env-file ../.env -p dropboks \
  -f docker-compose.db.init.yml \
  -f docker-compose.grafana.init.yml \
  -f docker-compose.prometheus.init.yml \
  -f docker-compose.db-prometheus-exp.init.yml \
  -f docker-compose.minio.init.yml \
  -f docker-compose.nats.init.yml \
  -f docker-compose.nats-prometheus-exp.init.yml \
  -f docker-compose.redis.init.yml \
  -f docker-compose.redis-prometheus-exp.init.yml \
  -f docker-compose.gateway.yml \
  -f docker-compose.gateway-prometheus-exp.yml \
  -f docker-compose.auth-svc.yml \
  -f docker-compose.user-svc.yml \
  -f docker-compose.file-svc.yml \
  -f docker-compose.notification-svc.yml \
  down
