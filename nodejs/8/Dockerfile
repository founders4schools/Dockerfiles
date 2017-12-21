FROM node:8

# Install bower and gulp, allow bower to run as root:
# https://github.com/bower/bower/issues/1752#issuecomment-113455403
RUN npm install -g bower gulp && \
    echo '{ "allow_root": true }' > /root/.bowerrc
