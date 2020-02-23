# docker-stafwag-mldonkey

```Dockerfile``` to run mldonkey inside a docker container.
mldonkey daemon will run as the mldonkey user. The uid/gid is mapped
10000.

## Installation

### clone the git repo

```
$ git clone https://github.com/stafwag/docker-stafwag-mldonkey.git
$ cd docker-stafwag-mldonkey
```

### Build the image

```
$ docker build -t stafwag/mldonkey . 
```

### Create a directory for mldonkey volume

```
$ sudo mkdir -p /home/volumes/docker/mldonkey
$ sudo chown 10000:10000 /home/volumes/docker/mldonkey
```

## Run

### Update run.sh

For security reason it's recommended to limit access to the mldonkey control ports:

* 4080 : http_port
* 4000 : telnet_port
* 4001 : gui_port 

Bind these ports to a fixed ip address and use a firewall to limit the access.

```
$ vi run.sh
```

### Run

Execute the run shell script.

```
$ ./run.sh
```


***Have fun***
