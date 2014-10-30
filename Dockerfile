FROM sameersbn/ubuntu:14.04.20141026
MAINTAINER Juha Kovanen (juha.kovanen@gmail.com)

ADD build.sh /tmp/build.sh
RUN mkdir /shadowcash-out && \
  chmod +x /tmp/build.sh && \
  apt-get update && \
  apt-get -y install build-essential libtool autotools-dev autoconf pkg-config libssl-dev bsdmainutils git && \
  apt-get -y install libboost-all-dev libminiupnpc-dev libdb++-dev libqrencode-dev
VOLUME ["/shadowcash-out"]
CMD ["/bin/bash", "/tmp/build.sh"]
