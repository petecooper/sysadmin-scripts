#!/bin/bash
sudo nginx -t \
&& sudo rm -rf /var/cache/nginx/* \
&& sudo systemctl reload nginx
