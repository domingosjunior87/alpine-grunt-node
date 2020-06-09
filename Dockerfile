FROM node:10.6.0-alpine

RUN apk --update add --no-cache \
    autoconf \
    automake \
    bash \
    g++ \
    git \
    libc6-compat \
    libjpeg-turbo-dev \
    libpng-dev \
    make \
    nasm \
    openssh-client

RUN rm -rf /var/cache/apk/*

RUN npm install -g grunt-cli

RUN mkdir -p ~/.ssh
