#/bin/bash

. ./module.sh

checkAndInstallDocker

bash create_nginx_conf.sh

pullNginxImage

bash create_hello_file.sh

runDockerContainer

copyNginxConfintoContainer

copyNginxCFileintoContainer

runCGIinDocker
