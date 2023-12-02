#!/bin/bash
tar cvf - -C "$HOME" /var/www/ $(cat /etc/nginx-prefix)/nginx/ /var/log/nginx/ | gzip -c9 > $(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_nginx_var-log-nginx.zip
