FROM node:8.12.0-alpine

ARG HOST_UID

# Un-break Node's bogarting of UID 1000
RUN apk --update --no-cache --virtual .build-deps add shadow \
  && usermod -u 50000 node \
  && groupmod -g 50000 node \
  && apk del .build-deps

# Add a user to our container, using the uid/gid of the host user
RUN addgroup -S app -g ${HOST_UID} \
  && adduser -S app -u ${HOST_UID} -G app \
  && chown -R app:app /home/app/

# Add chromium (for headless testing) and git
RUN apk add --update --no-cache git chromium

RUN npm install -g yarn

ENV ENV="/etc/profile"
