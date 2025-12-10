#!/bin/bash
sudo apt update \
&& if \
[[ $(uname -m) == "aarch64" ]] \
; then \
sudo apt -y install \
linux-headers-arm64 \
; fi \
&& if \
[[ $(uname -m) == "x86_64" ]] \
; then \
sudo apt -y install \
linux-headers-amd64 \
; fi \
&& echo popularity-contest popularity-contest/participate boolean true | \
sudo debconf-set-selections \
&& sudo apt -y install \
apt-transport-https \
autoconf \
autoconf-archive \
automake \
autotools-dev \
bison \
bpftool \
bpftune \
build-essential \
ccache \
certbot \
clang \
cmake \
cpio \
dctrl-tools \
debian-goodies \
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
gpgv \
graphviz \
htop \
lbzip2 \
libaio-dev \
libarchive-dev \
libargon2-dev \
libatomic-ops-dev \
libavif-dev \
libbison-dev \
libboost-dev \
libbpf-dev \
libbpf-tools \
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
libexpat1-dev \
libfftw3-dev \
libfl-dev \
libfontconfig-dev \
libfontconfig1 \
libgcrypt20-dev \
libgd-dev \
libgeoip-dev \
libglib2.0-dev \
libheif-dev \
libhwy-dev \
libibverbs-dev \
libicu-dev \
libimagequant-dev \
libjansson-dev \
libjemalloc-dev \
libjpeg-dev \
libjson-c-dev \
libjxl-dev \
libkrb5-dev \
libldap-dev \
liblua5.4-dev \
liblz4-dev \
libmagic-dev \
libmagickcore-dev \
libmaxminddb-dev \
libmemcached-dev \
libmemcached-tools \
libmnl-dev \
libncurses-dev \
libnet1-dev \
libonig-dev \
libopenslide-dev \
libpcap-dev \
libpcre2-dev \
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
ncdu \
net-tools \
ninja-build \
p7zip \
patch \
pbzip2 \
pigz \
pixz \
pkg-config \
plzip \
popularity-contest \
python3-dev \
python3-docutils \
python3-git \
python3-semantic-version \
python3-sphinx \
re2c \
rsync \
scons \
screen \
swig \
tuned \
unzip \
uuid-dev \
whois \
wireguard \
xfsprogs \
xxd \
zip \
zlib1g-dev \
zstd \
&& sudo apt -y --no-install-recommends install \
ksmtuned \
&& sudo apt -y install \
&& sudo apt -y dist-upgrade \
&& sudo apt -y clean \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | \
awk '/^ii/{print $2}' | \
grep -E '[0-9]+\.[0-9]+\.[0-9]+' | \
grep -v "$(uname -r | \
cut -d- -f-2)" | \
xargs sudo apt -y purge \
&& echo 'Done.'
