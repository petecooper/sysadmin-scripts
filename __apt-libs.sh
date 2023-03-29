#!/bin/bash
sudo apt update \
&& sudo apt install -y \
autoconf \
automake \
certbot \
cmake \
g++ \
gcc \
libbpfcc-dev \
liblz4-dev \
libprotobuf-dev \
make \
pkg-config \
postfix \
redis \
uuid-dev \
zip \
zlib1g-dev \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& echo 'Done.'
