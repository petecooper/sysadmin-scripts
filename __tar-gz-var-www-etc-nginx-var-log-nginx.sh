#!/bin/bash
tar cvf - -C $HOME /var/www/ /etc/nginx/ /var/log/nginx/ | gzip -c9 > $(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx_var-log-nginx.zip
