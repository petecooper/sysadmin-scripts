#!/bin/bash
sudo systemctl stop php*fpm.service \
&& sleep 3 \
&& sudo systemctl start php*fpm.service
