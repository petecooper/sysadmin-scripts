#!/bin/bash
sudo apt update \
&& sudo apt install -y \
apt-transport-https \
autoconf \
automake \
bison \
certbot \
cmake \
dpkg-dev \
g++ \
gcc \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libbpfcc-dev \
libbsd-dev \
libbz2-dev \
libgd-dev \
libgeoip-dev \
liblz4-dev \
libonig-dev \
libpcre3-dev \
libprotobuf-dev \
libsodium-dev \
libsqlite3-dev \
libssl-dev \
libuv1-dev \
libxslt1-dev \
libzip-dev \
make \
pkg-config \
postfix \
re2c \
redis \
tree \
uuid-dev \
zip \
zlib1g-dev \
&& sudo apt -y dist-upgrade \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& echo 'Done.'
