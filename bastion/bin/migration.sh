#!/bin/sh

echo "migration starting"
for databasename in auth_db user_db; do
  migrate -database "postgres://${DB_USER}:${DB_PASSWORD}@${databasename}:${DB_PORT}/${DB_NAME}?sslmode=${DB_SSLMODE}" -path /init up
done
