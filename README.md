
#### start

```
$ make start
docker build -t consul_client ./client
Sending build context to Docker daemon  4.096kB
Step 1/4 : FROM library/consul
 ---> 9bf1618f4e63
Step 2/4 : RUN mkdir /tmp/consul_config
 ---> Using cache
 ---> 6bf889da586c
Step 3/4 : ADD service_1.json /tmp/consul_config/service_1.json
 ---> Using cache
 ---> 111e5f52aad0
Step 4/4 : ADD service_2.json /tmp/consul_config/service_2.json
 ---> Using cache
 ---> 6d6aec407154
Successfully built 6d6aec407154
Successfully tagged consul_client:latest
./scripts/start.sh
47868fdfddacf171ab0da0168e715738a6c837bf217cd4073d3b78d13ebaca48
dba29b2b105cba2cc7fb0bac9a35460577a16af738e7cb0470b893fb0b404d49
494443f907436d0e60587c80cd2b2a6ecb054f06f42a0b13c4b8034fc4861755


$ docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                                                                                    NAMES
494443f90743        consul_client       "docker-entrypoint..."   3 minutes ago       Up 3 minutes        8300-8302/tcp, 8500/tcp, 8301-8302/udp, 8600/tcp, 8600/udp                               client_2
dba29b2b105c        consul_client       "docker-entrypoint..."   3 minutes ago       Up 3 minutes        8300-8302/tcp, 8500/tcp, 8301-8302/udp, 8600/tcp, 8600/udp                               client_1
47868fdfddac        consul              "docker-entrypoint..."   3 minutes ago       Up 3 minutes        8301-8302/udp, 0.0.0.0:8500->8500/tcp, 8300-8302/tcp, 8600/udp, 0.0.0.0:8600->8600/tcp   server
```

#### clean

```
$ make clean
```

#### exec consul command


```
$ docker exec server consul members
Node      Address          Status  Type    Build  Protocol  DC
client_1  172.19.0.3:8301  alive   client  0.9.2  2         dc1
client_2  172.19.0.4:8301  alive   client  0.9.2  2         dc1
server    172.19.0.2:8301  alive   server  0.9.2  2         dc1
```

