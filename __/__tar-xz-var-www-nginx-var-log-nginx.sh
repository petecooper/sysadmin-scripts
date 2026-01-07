#!/bin/bash
tar cvf - -C "$HOME" /var/www/ $(cat /etc/nginx-nginx-prefix)/nginx/ /var/log/nginx/ | \
xz -9e -z -q > $(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_nginx_var-log-nginx.zip