#!/bin/bash
tar cvf - \
-C "$HOME" \
/var/www/ \
gzip -c9 > \
"$(date +"%Y%m%d_%H%M%S")"-"$(hostname)"-var-www.tar.gz
