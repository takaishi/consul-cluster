
#### start

```
$ make start
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

