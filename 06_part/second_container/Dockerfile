ARG CODE_VERSION=latest

FROM nginx:${CODE_VERSION}

WORKDIR /etc/nginx

RUN rm -rf conf.d && mkdir conf.d

COPY ./nginx conf.d

