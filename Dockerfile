FROM node:10.6.0-alpine

RUN apk --update add openssh-client git \
    && rm -rf /var/cache/apk/* \
    && npm install -g grunt-cli
