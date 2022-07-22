#!/bin/bash
sudo apt update \
&& sudo apt -y dist-upgrade \
&& sudo apt -y autoclean \
&& sudo apt -y autoremove --purge \
&& sudo apt -y clean \
&& sudo swapoff -a \
&& sudo sed -i '/swapfile/d' /etc/fstab \
&& sudo rm -f /swapfile
