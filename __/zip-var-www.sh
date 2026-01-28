#!/bin/bash
zip -9 \
--symlinks \
-r \
"$HOME"/"$(date +"%Y%m%d_%H%M%S")-$(hostname)-var-www.zip" \
/var/www/
