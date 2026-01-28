#!/bin/bash
sudo apt update \
&& sudo apt -y dist-upgrade \
&& sudo apt -y autoclean \
&& sudo apt -y clean \
&& sudo apt -y autoremove --purge \
&& dpkg -l linux-{image,headers}-* | \
awk '/^ii/{print $2}' | \
grep -E '[0-9]+\.[0-9]+\.[0-9]+' | \
grep -v "$(uname -r | \
cut -d- -f-2)" | \
xargs sudo apt -y purge \
&& sudo swapoff -a \
&& sudo sed -i '/swapfile/d' /etc/fstab \
&& sudo rm -f /swapfile
