ARG CODE_VERSION=latest

FROM nginx:${CODE_VERSION}

WORKDIR /etc/nginx

RUN apt-get -y update

RUN apt-get install -y spawn-fcgi libfcgi-dev gcc

RUN rm -rf conf.d && mkdir conf.d

COPY ./nginx conf.d

COPY hello_cgi.c .

COPY ./scripts/run.sh .

RUN gcc hello_cgi.c -lfcgi -o hello && rm -f hello_cgi.c

RUN nginx -t

ENTRYPOINT bash run.sh
