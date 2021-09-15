#!/bin/bash
tar cvf - -C $HOME /var/www/ /etc/nginx/ | gzip -c9 > $(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www_etc-nginx.zip
