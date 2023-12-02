#!/bin/bash
echo 'Approximate system RAM (GB): '$(grep MemTotal /proc/meminfo | awk '{print $2}' | xargs -I {} echo "scale=4; {}/1024^2" | bc | xargs printf "%.2f") \
&& read -p 'Swapfile size with unit (e.g. 4G): ' swapfilesize \
&& sudo fallocate -l "$swapfilesize" /swapfile \
&& sudo chmod 600 /swapfile \
&& sudo mkswap /swapfile \
&& sudo swapon /swapfile --show \
&& sudo sh -c 'echo "/swapfile none swap sw 0 0" >> /etc/fstab' \
&& echo -e '****************************************' \
&& echo -e '* Swapfile created. Reboot to confirm. *' \
&& echo -e '****************************************'
