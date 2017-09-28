FROM openjdk:8-jdk-alpine
LABEL maintainer "brett.wooldridge@gmail.com"

RUN apk add --update --no-cache \
               libstdc++ \
               bash \
               openssl \
               coreutils

ENV DOCKERIZE_VERSION v0.4.0
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENTRYPOINT /bin/sh
