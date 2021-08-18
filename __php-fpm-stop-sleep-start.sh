#!/bin/bash
sudo systemctl stop php*fpm.service \
&& sleep 2 \
&& sudo systemctl start php*fpm.service
