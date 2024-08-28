#!/bin/bash
if \
[[ -s /etc/swap-file-size ]] \
; then \
sudo fallocate -l "$(< /etc/swap-file-size)" /swapfile \
&& sudo chmod 600 /swapfile \
&& sudo mkswap /swapfile \
&& sudo swapon /swapfile --show \
&& sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab' \
&& echo -e '**************************************' \
&& echo -e '* Swapfile created. Shutting down... *' \
&& echo -e '**************************************' \
&& sudo shutdown -h now \
; else \
echo '************************************' \
&& echo '* `/etc/swap-file-size` not found. *' \
&& echo '************************************' \
; fi
