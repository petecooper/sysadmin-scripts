#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
apt-transport-https \
autoconf \
automake \
bison \
build-essential \
ccache \
certbot \
clang \
cmake \
dpkg-dev \
fio \
flent \
flex \
g++ \
gcc \
gosu \
htop \
libaio1 \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libbpf-dev \
libbpf-tools \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libcap-ng-dev \
libcurl4-openssl-dev \
libelf-dev \
libevent-dev \
libfl-dev \
libgd-dev \
libgeoip-dev \
libhiredis-dev \
libjansson-dev \
libjpeg-dev \
libkqueue-dev \
liblua5.1-dev \
liblz4-dev \
libmagic-dev \
libmnl-dev \
libncurses5-dev \
libnet1-dev \
libonig-dev \
libpcap-dev \
libpcre2-dev \
libpng-dev \
libprotobuf-dev \
libsasl2-dev \
libsodium-dev \
libsqlite3-dev \
libssl-dev \
libsystemd-dev \
libtool \
libuv1-dev \
libwebp-dev \
libxslt1-dev \
libyaml-dev \
libzip-dev \
libzstd-dev \
lrzip \
make \
mc \
moreutils \
multitail \
ninja-build \
pkg-config \
postfix \
python3-dev \
python3-git \
python3-semantic-version \
re2c \
redis \
rsync \
screen \
swig \
tuned \
uuid-dev \
zip \
zlib1g-dev \
&& if \
[[ $(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release) = "debian" ]] \
; then \
sudo apt -y install \
dctrl-tools \
debian-goodies \
libavif-dev \
; fi \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y dist-upgrade \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& echo 'Done.'
