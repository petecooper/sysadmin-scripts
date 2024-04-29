#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
apt-transport-https \
autoconf \
automake \
bison \
certbot \
cmake \
dpkg-dev \
fio \
flent \
g++ \
gcc \
htop \
libaio1 \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libelf-dev \
libfl-dev \
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
mc \
moreutils \
multitail \
ninja-build \
pkg-config \
postfix \
re2c \
redis \
rsync \
screen \
tuned \
uuid-dev \
zip \
zlib1g-dev \
&& if \
[[ $(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release) = "debian" ]] \
; then \
sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
dctrl-tools \
debian-goodies \
popularity-contest \
; fi \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y dist-upgrade \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& echo 'Done.'
