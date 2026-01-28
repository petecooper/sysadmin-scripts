#!/bin/bash
if \
    [[ -f /usr/sbin/nginx/nginx ]] \
; then \
    echo -e '\n=> nginx found at `/usr/sbin/nginx/nginx`.' \
    && echo -e '=> Checking nginx version...' \
    && /usr/sbin/nginx/nginx -v \
; fi \
&& if \
    [[ -f /usr/sbin/nginx ]] \
; then \
    echo -e '\n=> nginx found at `/usr/sbin/nginx`.' \
    && echo -e '=> Checking nginx version...' \
    && /usr/sbin/nginx -v \
; fi
