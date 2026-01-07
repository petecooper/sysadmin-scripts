#!/bin/bash
if \
[[ -s /etc/swap-file-size ]] \
; then \
swap_size="$(< /etc/swap-file-size)" \
&& sudo fallocate -l "$swap_size" /swapfile \
&& sudo chmod 600 /swapfile \
&& sudo mkswap /swapfile \
&& sudo swapon /swapfile --show \
&& sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab' \
&& echo -e '\n=> Swapfile size: '"$swap_size" \
&& echo -e '\n**********************************' \
&& echo -e '* Swapfile created. Rebooting... *' \
&& echo -e '**********************************' \
&& sudo reboot \
; else \
echo -e '\n************************************' \
&& echo '* `/etc/swap-file-size` not found. *' \
&& echo '************************************' \
; fi
