FROM golang:1.24-alpine AS builder
WORKDIR /app
RUN apk add --no-cache git
RUN go install -tags 'postgres' -v github.com/golang-migrate/migrate/v4/cmd/migrate@latest

FROM alpine:3.22
RUN apk add --no-cache ca-certificates
COPY --from=builder /go/bin/migrate /usr/local/bin/migrate
COPY /init /init
COPY bin/migration.sh /init/migration.sh
RUN chmod +x /init/migration.sh
