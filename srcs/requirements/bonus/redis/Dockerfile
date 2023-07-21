FROM alpine:3.14

RUN apk update && apk add redis php7-redis

COPY ./tools/script.sh .

ENTRYPOINT [ "sh", "script.sh" ]

CMD [ "redis-server", "--protected-mode", "no", "--daemonize no" ]