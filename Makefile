include .env

migrate-up:
	@echo "Migrate Up..."
	@migrate -database postgres://$(DB_USER):$(DB_PASSWORD)@$(DB_HOST):$(DB_PORT)/$(DB_NAME)?sslmode=$(DB_SSLMODE) -path db/migrations up

migrate-down:
	@echo "Migrate Down..."
	@migrate -database postgres://$(DB_USER):$(DB_PASSWORD)@$(DB_HOST):$(DB_PORT)/$(DB_NAME)?sslmode=$(DB_SSLMODE) -path db/migrations down

migrate-force:
	@echo "Migrate force"
	@migrate -database postgres://$(DB_USER):$(DB_PASSWORD)@$(DB_HOST):$(DB_PORT)/$(DB_NAME)?sslmode=$(DB_SSLMODE) -path db/migrations force 1