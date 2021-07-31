#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx.zip" /var/www/ /etc/nginx/
