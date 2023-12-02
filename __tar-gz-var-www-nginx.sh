#!/bin/bash
tar cvf - -C "$HOME" /var/www/ $(cat /etc/nginx-prefix)/nginx/ | gzip -c9 > $(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_nginx.zip
