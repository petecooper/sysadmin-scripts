#!/bin/bash
sudo nginx -t \
&& sudo rm -rf /var/cache/nginx/* \
&& sudo /usr/sbin/nginx -s reload
