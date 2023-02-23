## Part 1. Ready-made docker

![1676199437098](image/report/1676199437098.png)

> Using `docker pull` for getting official image of nginx from defaul registry `DockerHub`.



![1676199540976](image/report/1676199540976.png)

> Using `docker images`  in order to know all images that we have



![1676199898536](image/report/1676199898536.png)

> Using `docker run -d <image:tag>`. 

Flag `-d`  means that we take up our container in the background so we can continue to use terminal in usual way.


![1676200184243](image/report/1676200184243.png)

> Using `docker ps` in order to find out what procceses is runnig right now in our docker host. 


![1676200347284](image/report/1676200347284.png)

> Using `docker inspect <container id | container name>` for knowing more pedantic information about our container.


![1676201194457](image/report/1676201194457.png)

> Using `docker ps --size` in order to know the size of our running containers and also the list of maping ports


![1676202388302](image/report/1676202388302.png)

> Using specific output format with flag `-f` for know the exact IP address of our container


```
Summing the above information:
1. Ports: 80/tcp
2. Size: 1.09kB (virtual 142MB)
3. IP adress: 172.17.0.2
```


![1676203156564](image/report/1676203156564.png)

> Using `docker stop` in order to stop procces of our container
>
> PS: If the `container id` is `unique` than we are able to use short-format of it


![1676203369474](image/report/1676203369474.png)

> Using `docker ps` to ensure that after executing `docker stop` our container was stoped



![1676204540372](image/report/1676204540372.png)

> Using `docker run` with two varieties of flags: -d (detached mode), -p (port)


![1676205167170](image/report/1676205167170.png)

> Checking that our nginx is available within port `:80`


![1676205578522](image/report/1676205578522.png)

> Using `docker restart` in order to restart our container


![1676205422489](image/report/1676205422489.png)

> The last part of output that shows the procces of restarting our container
>
> PS: for doing this used `docker container logs [container_id | container_name]`
