#!/bin/bash
sudo swapoff -a \
&& sudo sed -i '/swapfile/d' /etc/fstab \
&& sudo rm -f /swapfile \
&& sudo shutdown -h now
