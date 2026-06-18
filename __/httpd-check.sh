#!/bin/bash
if \
    [[ -f /usr/sbin/nginx/nginx ]] \
; then \
    echo -e '== nginx ==' \
    && echo -e '\n=> nginx found at `/usr/sbin/nginx/nginx`.' \
    && echo -e '=> Checking nginx version...' \
    && /usr/sbin/nginx/nginx -v \
; fi \
&& if \
    [[ -f /usr/sbin/nginx ]] \
; then \
    echo -e '== nginx ==' \
    && echo -e '\n=> nginx found at `/usr/sbin/nginx`.' \
    && echo -e '=> Checking nginx version...' \
    && /usr/sbin/nginx -v \
; fi \
&& if \
    [[ -f /opt/caddy/caddy/caddy ]] \
; then \
    echo -e '== Caddy ==' \
    && echo -e '\n=> Caddy found at `/opt/caddy/caddy/caddy`.' \
    && echo -e '=> Checking Caddy version...' \
    && /opt/caddy/caddy/caddy version \
; fi \
&& if \
    [[ -f /opt/frankenphp/frankenphp/frankenphp ]] \
; then \
    echo -e '== FrankenPHP ==' \
    && echo -e '\n=> FrankenPHP found at `/opt/frankenphp/frankenphp/frankenphp`.' \
    && echo -e '=> Checking FrankenPHP version...' \
    && /opt/frankenphp/frankenphp/frankenphp version \
; fi
