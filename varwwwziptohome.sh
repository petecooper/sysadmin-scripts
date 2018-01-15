#!/bin/bash
sudo zip --symlinks -r ~/"$(date +"%Y%m%d%H%M%S")-$(hostname).zip" /var/www
