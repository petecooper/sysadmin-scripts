#!/bin/bash
if [ -f "/usr/sbin/nginx" ] ; then
sudo /usr/sbin/nginx -s reopen
fi
if [ -f "/usr/sbin/nginx/nginx" ] ; then
sudo /usr/sbin/nginx/nginx -s reopen
fi
