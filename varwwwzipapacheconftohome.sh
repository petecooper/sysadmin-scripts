#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d")-$(hostname)-var-www-apache.zip" /var/www /etc/apache2/
