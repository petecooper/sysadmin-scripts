#!/bin/bash
sudo service php*fpm restart \
&& sudo nginx -t \
&& sudo systemctl restart nginx
