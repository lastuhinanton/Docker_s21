#!/bin/bash

export DOCKER_CONTENT_TRUST=1

bash build.sh

dockle -ak NGINX_GPGKEY isabeler:21.0.0