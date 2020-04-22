# nginx_curl
시험문제 제출용_ nginx와 curl을 centos 기반으로 만들기

# dockerfiles-ubuntu-user-adderable-nginx test
ubuntu, It support base user creation and password setting.
```
pithub.com에 접속하여 self계정으로 dockerbuild로 Rpository 만들기
git config --global core.autocrlf false
git config --global core.eol lf
git clone https://github.com/ybahn001/nginx_curl.git

```
# Build Script
[https://github.com/ybahn001/nginx_curl.git](https://github.com/ybahn001/nginx_curl.git)

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	$cd
	$cd nginx_curl
	$winpty docker build --rm -t ybahn001/nginx_curl ./

	$ winpty docker run -it --name=ayb1 -e USER=ybahn -e PASSWD=ybahn ybahn001/nginx_curl

```
Get the port that the container is listening on:

```
# docker ps -a | grep ybahn001/nginx_curl
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES				 seconds
47880784ceb6        ybahn001/nginx_curl                  "/bin/sh -c /start.sh"   15 seconds ago      Up 14 seconds                                          ayb1

```

To test, ("ybahn" is username. )
```
		#infconfig
    eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
            inet 172.17.0.3  netmask 255.255.0.0  broadcast 172.17.255.255
            ether 02:42:ac:11:00:03  txqueuelen 0  (Ethernet)
            RX packets 9  bytes 726 (726.0 B)
            RX errors 0  dropped 0  overruns 0  frame 0
            TX packets 0  bytes 0 (0.0 B)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

    lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
            inet 127.0.0.1  netmask 255.0.0.0
            loop  txqueuelen 1000  (Local Loopback)
            RX packets 0  bytes 0 (0.0 B)
            RX errors 0  dropped 0  overruns 0  frame 0
            TX packets 0  bytes 0 (0.0 B)
            TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

    #curl google.com
    <HTML><HEAD><meta http-equiv="content-type" content="text/html;charset=utf-8">
    <TITLE>301 Moved</TITLE></HEAD><BODY>
    <H1>301 Moved</H1>
    The document has moved
    <A HREF="http://www.google.com/">here</A>.
    </BODY></HTML>

    #tree --version
    tree v1.7.0 (c) 1996 - 2014 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro

```
Github에 이미지 올리기
```
cd nginx_curl
git add -A
git commit -m "add nginx_curl and etc"
git push

```

DockerHeb에 docker image push & readme.md update
```
1. image push
   $ docker push ybahn001/nginx_curl
2. readme.md udpate
   - github repository specification (: https://github.com/ybahn001/nginx_curl.git)
```

To Rollback
```
    docker rm ayb1 -f
    docker rmi ybahn001/nginx_curl
```
