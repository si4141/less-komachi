FROM node:alpine3.12

ENV HOME="/app" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo 

WORKDIR ${HOME}

RUN apk update && \
    apk upgrade && \
    yarn add @vue/cli

ENV HOST 0.0.0.0
EXPOSE 3000