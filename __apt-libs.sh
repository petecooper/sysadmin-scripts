#!/bin/bash
sudo apt update \
&& sudo apt install -y \
autoconf \
automake \
certbot \
cmake \
g++ \
gcc \
libatomic-ops-dev \
libbpfcc-dev \
libbsd-dev \
libgd-dev \
libgeoip-dev \
liblz4-dev \
libpcre3-dev \
libprotobuf-dev \
libxslt1-dev \
make \
pkg-config \
postfix \
redis \
uuid-dev \
zip \
zlib1g-dev \
&& sudo apt -y dist-upgrade \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& echo 'Done.'
