#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www-apache.zip" /var/www /etc/apache2/
