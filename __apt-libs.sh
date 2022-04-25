#!/bin/bash
sudo apt install -y \
autoconf \
autoconf-archive \
autogen \
automake \
autotools-dev \
bison \
build-essential \
certbot \
clang \
cmake \
cmake-data \
cpulimit \
debian-goodies \
doxygen \
extra-cmake-modules \
g++ \
glances \
imagemagick \
libaio-dev \
libaom-dev \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libboost-all-dev \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libcurl4-openssl-dev \
libelf-dev \
libfreetype6-dev \
libgd-dev \
libgeoip-dev \
libgif-dev \
libgoogle-perftools-dev \
libheif-dev \
libipmimonitoring-dev \
libjemalloc-dev \
libjpeg-dev \
libjson-c-dev \
liblz4-dev \
libmnl-dev \
libncurses-dev \
libnetfilter-acct-dev \
libonig-dev \
libopenexr-dev \
libpcre3-dev \
libpng-dev \
libprotobuf-dev \
libreadline-dev \
librtmp-dev \
libsnappy-dev \
libsodium-dev \
libsqlite3-dev \
libssl-dev \
libtirpc-dev \
libtool \
libuv1-dev \
libwebp-dev \
libxen-dev \
libxslt1-dev \
libyajl-dev \
libzip-dev \
linux-tools-common \
linux-tools-generic \
locales-all \
mailutils \
make \
moreutils \
multitail \
nasm \
net-tools \
ninja-build \
num-utils \
pigz \
pkg-config \
postgresql \
re2c \
redis \
ruby-full \
sqlite3 \
subversion \
tree \
unzip \
uuid-dev \
virtualenv \
yasm \
zip \
zlib1g-dev \
zsh \
&& if \
[[ $(lsb_release -sc) = "focal" ]] \
; then \
sudo apt install -y \
libvips-dev \
; fi \
&& if \
[[ $(lsb_release -sc) = "jammy" ]] \
; then \
sudo apt install -y \
libavif-dev \
libyuv-dev \
; fi \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove \
&& echo 'Done.'
