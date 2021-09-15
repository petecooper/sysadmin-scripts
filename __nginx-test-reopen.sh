#!/bin/bash
sudo /usr/sbin/nginx -t \
&& sudo /usr/sbin/nginx -s reopen
