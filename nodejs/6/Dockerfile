FROM node:6-alpine

# Install git, bower and gulp, allow bower to run as root:
# https://github.com/bower/bower/issues/1752#issuecomment-113455403
RUN apk --update add git && rm -rf /var/cache/apk/* && \
    npm install -g bower gulp && \
    echo '{ "allow_root": true }' > /root/.bowerrc
