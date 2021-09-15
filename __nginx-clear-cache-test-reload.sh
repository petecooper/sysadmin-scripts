#!/bin/bash
sudo /usr/sbin/nginx -t \
&& sudo rm -rf /var/cache/nginx/* \
&& sudo /usr/sbin/nginx -s reload
