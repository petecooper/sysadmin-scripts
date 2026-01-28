#!/bin/bash
if \
    [ -f "/usr/sbin/nginx" ] \
; then \
    sudo /usr/sbin/nginx -t \
    && sudo rm -rf /var/cache/nginx/* \
    && sudo /usr/sbin/nginx -s reload \
; fi \
&& if \
        [ -f "/usr/sbin/nginx/nginx" ] \
; then \
    sudo /usr/sbin/nginx/nginx -t \
    && sudo rm -rf /var/cache/nginx/nginx/* \
    && sudo /usr/sbin/nginx/nginx -s reload \
; fi
