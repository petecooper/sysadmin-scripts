#!/bin/bash
sudo fallocate -l "$(< /etc/swap-file-size)" /swapfile \
&& sudo chmod 600 /swapfile \
&& sudo mkswap /swapfile \
&& sudo swapon /swapfile --show \
&& sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab' \
&& echo -e '****************************************' \
&& echo -e '* Swapfile created. Reboot to confirm. *' \
&& echo -e '****************************************'
