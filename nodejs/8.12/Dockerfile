FROM node:8.16.0-alpine

# Un-break Node's bogarting of UID 1000
RUN apk --update --no-cache --virtual .build-deps add shadow \
  && usermod -u 50000 node \
  && groupmod -g 50000 node \
  && apk del .build-deps

# Add chromium (for headless testing) and git
RUN apk add --update --no-cache git chromium

RUN npm install -g yarn
