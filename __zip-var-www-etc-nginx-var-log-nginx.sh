#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx_var-log-nginx.zip" /var/www/ /etc/nginx/ /var/log/nginx/
