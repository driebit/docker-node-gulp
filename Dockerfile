FROM node:slim

RUN npm install -g bower gulp node-sass

COPY ./docker-entrypoint.sh /

WORKDIR /app
ENTRYPOINT ["/docker-entrypoint.sh"]
