#!/bin/bash

bash ./scripts/create_hello_file.sh
bash ./scripts/create_nginx_conf.sh

sudo docker build -t isabeler:21.0.0 .
sudo docker run -d -p 81:80 -p 80:80 isabeler:21.0.0

sleep 1

printf "\n\n"
curl http://localhost:81
printf "\n\n"
curl http://localhost:81/status
printf "\n\n"

rm -f hello_cgi.c
rm -f nginx.conf
rm -rf nginx
