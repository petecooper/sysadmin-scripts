#!/bin/bash
sudo swapoff -a \
&& sudo swapon -a \
&& sudo sed -i '/swapfile/d' /etc/fstab \
&& sudo rm -f /swapfile
