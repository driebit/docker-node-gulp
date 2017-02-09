FROM alpine:3.4

# musl-dev is required for the node-sass binary from https://github.com/sass/node-sass/issues/1589
RUN apk add --no-cache ca-certificates git musl-dev nodejs \
    && apk add --no-cache --virtual build-deps gcc g++ make python \
    && npm install -g bower gulp node-sass \
    && apk del build-deps

COPY ./docker-entrypoint.sh /

WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
