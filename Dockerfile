FROM alpine:latest

RUN apk add --update --no-cache git && \
    rm -rf /var/lib/apt/lists/* 

COPY entrypoint.sh /entrypoint.sh

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
