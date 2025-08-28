FROM nginx:1.28.0-alpine-slim
RUN apk add --no-cache curl
COPY nginx/nginx.conf /etc/nginx/nginx.conf
COPY ./cert/server.crt /etc/nginx/ssl/server.crt
COPY ./cert/server.key /etc/nginx/ssl/server.key