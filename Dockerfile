FROM node:slim

RUN apt-get update \
    && apt-get install -y git \
    && rm -rf /var/lib/apt/lists/*

RUN npm install -g bower gulp node-sass

COPY ./docker-entrypoint.sh /

WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
