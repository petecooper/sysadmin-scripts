#!/bin/bash
sudo apt -oDebug::pkgAcquire::Worker=1 update \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
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
cpio \
dialog \
dkms \
dpkg-dev \
fio \
flent \
flex \
g++ \
gcc \
gettext \
gosu \
graphviz \
htop \
lbzip2 \
libaio-dev \
libaio1 \
libarchive-dev \
libargon2-dev \
libatomic-ops-dev \
libbison-dev \
libboost-dev \
libbpfcc-dev \
libbrotli-dev \
libbsd-dev \
libbz2-dev \
libcap-dev \
libcap-ng-dev \
libcfitsio-dev \
libcgif-dev \
libcurl4-openssl-dev \
libedit-dev \
libelf-dev \
libev-dev \
libevent-dev \
libexif-dev \
libexpat-dev \
libfftw3-dev \
libfl-dev \
libfontconfig-dev \
libfontconfig1 \
libgcrypt-dev \
libgd-dev \
libgeoip-dev \
libglib2.0-dev \
libheif-dev \
libhwy-dev \
libibverbs-dev \
libimagequant-dev \
libjansson-dev \
libjemalloc-dev \
libjpeg-dev \
libjson-c-dev \
libjxl-dev \
libkrb5-dev \
libldap-dev \
liblz4-dev \
libmagic-dev \
libmagickcore-dev \
libmaxminddb-dev \
libmemcached-dev \
libmemcached-tools \
libmnl-dev \
libncurses-dev \
libncurses5-dev \
libnet1-dev \
libonig-dev \
libopenslide-dev \
libpcap-dev \
libpcre2-dev \
libpcre3-dev \
libpng-dev \
libpoppler-glib-dev \
libproc2-dev \
libprotobuf-dev \
libpsl-dev \
librdmacm-dev \
libsasl2-dev \
libsodium-dev \
libspng-dev \
libsqlite3-dev \
libssh-dev \
libssl-dev \
libsystemd-dev \
libtool \
libuv1-dev \
libwebp-dev \
libxslt1-dev \
libyaml-dev \
libzip-dev \
libzstd-dev \
linux-headers-"$(uname -r)" \
llvm \
locate \
lrzip \
lz4 \
make \
mc \
meson \
moreutils \
multitail \
musl \
mydumper \
ncdu \
net-tools \
ninja-build \
patch \
pbzip2 \
pigz \
pkg-config \
python3-dev \
python3-docutils \
python3-git \
python3-semantic-version \
python3-sphinx \
re2c \
rsync \
screen \
swig \
scons \
tuned \
unzip \
uuid-dev \
whois \
wireguard \
xxd \
zip \
zlib1g-dev \
zstd \
&& echo postfix postfix/mailname string "$(</etc/fqdn)" | \
sudo debconf-set-selections \
&& echo postfix postfix/main_mailer_type string 'Internet Site' | \
sudo debconf-set-selections \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
postfix \
&& if \
[[ $(awk -F= '$1=="ID" { print $2 ;}' /etc/os-release) = "debian" ]] \
; then \
; then \
echo popularity-contest popularity-contest/participate boolean true | \
sudo debconf-set-selections \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
bpftool \
dctrl-tools \
libavif-dev \
libbpf-dev \
libbpf-tools \
liblua5.4-dev \
popularity-contest \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y --no-install-recommends install \
ksmtuned \
; fi \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y install \
debian-goodies \
; fi \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y dist-upgrade \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y clean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoclean \
&& sudo apt -oDebug::pkgAcquire::Worker=1 -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | \
awk '/^ii/{print $2}' | \
grep -E '[0-9]+\.[0-9]+\.[0-9]+' | \
grep -v "$(uname -r | \
cut -d- -f-2)" | \
xargs sudo apt -y purge \
&& echo 'Done.'
