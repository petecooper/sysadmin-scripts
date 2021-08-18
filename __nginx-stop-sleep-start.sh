#!/bin/bash
sudo systemctl stop nginx \
&& sleep 2 \
&& sudo systemctl start nginx
