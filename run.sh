#!/bin/bash

docker run --restart unless-stopped \
	--memory=512M \
	--cpus=1 \
       	-d \
	--name my_mldonkey \
       	-p 4001:4001 \
       	-p 6666:6666 \
	-v /home/volumes/docker/staf_mldonkey/:/home/mldonkey/ \
       	stafwag/mldonkey
