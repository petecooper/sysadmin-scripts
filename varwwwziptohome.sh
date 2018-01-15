#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d")-$(hostname)-var-www.zip" /var/www
