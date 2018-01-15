#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d")-$(hostname)-var-www-nginx.zip" /var/www /etc/nginx/
