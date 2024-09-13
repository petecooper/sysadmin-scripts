#!/bin/bash
sudo apt update \
&& sudo apt -y install \
apt-transport-https \
autoconf \
autoconf-archive \
automake \
autotools-dev \
bison \
build-essential \
ccache \
certbot \
clang \
cmake \
cpio
dpkg-dev \
fio \
flent \
flex \
g++ \
gcc \
gosu \
graphviz \
htop \
libaio1 \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libcap-ng-dev \
libcurl4-openssl-dev \
libedit-dev \
libelf-dev \
libevent-dev \
libfl-dev \
libgd-dev \
libgeoip-dev \
libhiredis-dev \
libjansson-dev \
libjemalloc-dev \
libjpeg-dev \
libjson-c-dev \
liblua5.4-dev \
liblz4-dev \
libmagic-dev \
libmnl-dev \
libncurses-dev \
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
ncdu \
net-tools \
ninja-build \
pkg-config \
python3-dev \
python3-docutils \
python3-git \
python3-semantic-version \
python3-sphinx \
re2c \
redis \
rsync \
screen \
swig \
tuned \
uuid-dev \
whois \
zip \
zlib1g-dev \
&& echo postfix postfix/main_mailer_type string Internet Site | sudo debconf-set-selections \
&& sudo apt -y install \
postfix \
&& if \
[[ $(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release) = "debian" ]] \
; then \
echo popularity-contest popularity-contest/participate boolean true | sudo debconf-set-selections \
&& sudo apt -y install \
dctrl-tools \
libavif-dev \
libbpf-dev \
libbpf-tools \
popularity-contest \
; fi \
&& sudo apt -y install \
debian-goodies \
&& sudo apt -y dist-upgrade \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | awk '/^ii/{print $2}' | grep -E '[0-9]+\.[0-9]+\.[0-9]+' | grep -v "$(uname -r | cut -d- -f-2)" | xargs sudo apt -y purge \
&& echo 'Done.'
