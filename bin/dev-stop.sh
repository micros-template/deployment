#!/bin/bash

cd ./docker
docker compose --env-file ../.env -p dropboks \
  -f docker-compose.db.init.yml \
  -f docker-compose.db.init.override.yml \
  -f docker-compose.db-prometheus-exp.init.yml \
  -f docker-compose.minio.init.yml \
  -f docker-compose.minio.init.override.yml \
  -f docker-compose.nats.init.yml \
  -f docker-compose.nats.init.override.yml \
  -f docker-compose.nats-prometheus-exp.init.yml \
  -f docker-compose.redis.init.yml \
  -f docker-compose.redis.init.override.yml \
  -f docker-compose.redis-prometheus-exp.init.yml \
  -f docker-compose.monitoring.init.yml \
  -f docker-compose.monitoring.init.override.yml \
  down
