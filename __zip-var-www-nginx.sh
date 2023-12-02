#!/bin/bash
sudo zip --symlinks -r "$HOME"/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx.zip" /var/www/ $(cat /etc/nginx-prefix)/nginx/
