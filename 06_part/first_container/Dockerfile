ARG CODE_VERSION=latest

FROM nginx:${CODE_VERSION}

WORKDIR /etc/nginx

RUN apt-get -y update && apt-get install -y spawn-fcgi libfcgi-dev gcc iputils-ping vim && rm -rf /var/lib/apt/lists

RUN rm -rf conf.d && mkdir conf.d

COPY ./nginx conf.d

COPY hello_cgi.c .

COPY ./run.sh .

RUN gcc hello_cgi.c -lfcgi -o hello && rm -f hello_cgi.c

RUN nginx -t

HEALTHCHECK --interval=5m --timeout=3s \
CMD curl -f http://localhost/ || exit 1

RUN useradd nginx; \
    chown -R nginx:nginx /etc/nginx/nginx.conf; \
    chown -R nginx:nginx /var/cache/nginx; \
    chown -R nginx:nginx /home; \
    touch /var/run/nginx.pid; \
    chown -R nginx:nginx /var/run/nginx.pid; \
    chmod g-s /usr/bin/expiry; \
    chmod u-s /usr/bin/newgrp; \
    chmod g-s /usr/bin/chage; \
    chmod g-s /sbin/unix_chkpwd; \
    chmod u-s /bin/mount; \
    chmod g-s /usr/bin/wall; \
    chmod u-s /bin/su; \
    chmod u-s /usr/bin/passwd; \
    chmod u-s /usr/bin/chfn; \
    chmod u-s /usr/bin/chsh; \
    chmod u-s /usr/bin/gpasswd; \
    chmod u-s /bin/umount;

USER nginx

ENTRYPOINT bash run.sh
