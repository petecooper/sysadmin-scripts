#!/bin/bash
sudo zip -9 --symlinks -r "$HOME"/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx_var-log-nginx.zip" /var/www/ $(cat /etc/nginx-nginx-prefix)/nginx/ /var/log/nginx/
