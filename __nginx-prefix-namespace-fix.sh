#!/bin/bash
if [ -f "/etc/nginx-log-dir-base" ] ; then
sudo mv \
/etc/nginx-log-dir-base \
/etc/nginx-nginx-log-dir-base
fi
if [ -f "/etc/nginx-prefix" ] ; then
sudo mv \
/etc/nginx-prefix \
/etc/nginx-nginx-prefix
fi
if [ -f "/etc/nginx-tls-vendor" ] ; then
sudo mv \
/etc/nginx-tls-vendor \
/etc/nginx-nginx-tls-vendor
fi
