#!/bin/bash

( git clone https://github.com/SDCDev/shadowcoin.git /tmp/shadowcash && \
  cd /tmp/shadowcash/src && \
  make -f makefile.unix &&
  mv /tmp/shadowcash/src/shadowcoind /shadowcash-out/shadowcashd ) || (echo "Build failed!" && exit 1)
