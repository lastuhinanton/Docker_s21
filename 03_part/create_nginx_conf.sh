#/bin/bash

function createNginxConf {
    echo "server {
    listen			80;
    server_name 	localhost;

    location /{
        fastcgi_pass 127.0.0.1:8080;
    }

    error_page   500 502 503 504  /50x.html;
    location = /50x.html {
        root   /usr/share/nginx/html;
    }
}

server {
    listen 81;
    
    location / {
        proxy_pass http://127.0.0.1:80;
    }
}" > nginx.conf

    sudo rm -rf nginx
    sudo mkdir nginx
    cp nginx.conf ./nginx/
}

createNginxConf