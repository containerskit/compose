FROM alpine:3.12

RUN apk add --no-cache docker-compose

COPY docker-entrypoint.sh /usr/local/bin

ENTRYPOINT [ "docker-entrypoint.sh" ]

