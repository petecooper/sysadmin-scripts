#!/bin/bash
if [ -f "/etc/nginx/nginx.conf" ]; then
  echo "Found conf at /etc/nginx/"
fi
if [ -f "/opt/nginx/nginx.conf" ]; then
  echo "Found conf at /opt/nginx/"
fi
if [ -f "/opt/freenginx/nginx/nginx.conf" ]; then
  echo "Found conf at /opt/freenginx/nginx/"
fi
if [ -f "/opt/nginx/nginx/nginx.conf" ]; then
  echo "Found conf at /opt/nginx/nginx/"
fi
