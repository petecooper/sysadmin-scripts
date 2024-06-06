#!/bin/bash
sudo apt update \
&& sudo apt -y install \
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
libbpf-dev \
libbpf-tools \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libelf-dev \
libfl-dev \
libgd-dev \
libgeoip-dev \
liblz4-dev \
libmnl-dev \
libncurses5-dev \
libonig-dev \
libpcre2-dev \
libprotobuf-dev \
libsasl-dev \
libsodium-dev \
libsqlite3-dev \
libssl-dev \
libsystemd-dev \
libuv1-dev \
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
sudo apt -y install \
dctrl-tools \
debian-goodies \
popularity-contest \
; fi \
&& sudo apt -y dist-upgrade \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& echo 'Done.'
