#!/bin/bash
sudo sed -i 's|^#\/swapfile|/swapfile|g' /etc/fstab \
&& sudo shutdown -h now
