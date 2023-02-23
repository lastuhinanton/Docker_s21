## Part 2. Operations with container

![1676207183057](image/report/1676207183057.png)

> Using command `docker exec` to execute  command `cat /etc/nginx/nginx.conf` inside our container in order to know the context of `nginx.conf`

![1676209764529](image/report/1676209764529.png)

> Creating nginx.conf in local machine

![1676212767580](image/report/1676212767580.png)

> Copying local .conf file into the container

![1676212980839](image/report/1676212980839.png)

> Reloading nginx inside our container with command `docker exec`

![1676213753097](image/report/1676213753097.png)

> Checking `/status` page

![1676213861910](image/report/1676213861910.png)

> Context of `nginx.conf`

![1676217472790](image/report/1676217472790.png)

> Using `docker export` command to convert our container into archive file

![1676218165148](image/report/1676218165148.png)

> Using `docker rmi` command with flag `-f` (forcing dispite of some errors) in order to delete our image

![1676218333404](image/report/1676218333404.png)

> Using `docker ps` command with flag `-a` (short allternative to --all) in order to know all procceses

![1676218498971](image/report/1676218498971.png)

> Using `docker rm -f` for deleting our stoped container

![1676226160002](image/report/1676226160002.png)

> Using `docker import` for importing an archive file into a container

![1676226331721](image/report/1676226331721.png)

> Showing all images in docker host and run `docker run` command in order to take up our container. Accordingly we see an ouput of running `docker ps` that our container is running

![1676226554894](image/report/1676226554894.png)

> Checking that our nginx server is `working well`
