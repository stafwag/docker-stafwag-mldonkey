FROM debian:buster
LABEL maintainer "staf wagemakers <staf@wagemakers.be>"

RUN useradd -u 10000 mldonkey -p '*'

RUN apt-get update  -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y mldonkey-server

VOLUME /home/mldonkey

RUN chown mldonkey:mldonkey /home/mldonkey
EXPOSE 4662 4666 6419 6429 6346 6881 6882 1214 6699 1412 4444 2234    

USER mldonkey
ENTRYPOINT ["mldonkey"]
