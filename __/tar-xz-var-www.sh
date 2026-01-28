#!/bin/bash
tar cvf - \
-C "$HOME" \
/var/www/ \
xz -9e -z -q > \
"$(date +"%Y%m%d_%H%M%S")"-"$(hostname)"-var-www.tar.xz
