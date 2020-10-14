#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www-nginx.zip" /var/www/ /etc/nginx/ /var/log/nginx/
