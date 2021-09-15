#!/bin/bash
sudo /usr/sbin/nginx -t \
&& sudo systemctl restart nginx
