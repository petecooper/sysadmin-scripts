#!/bin/bash
sudo zip -9 --symlinks -r ~/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www.zip" /var/www/
