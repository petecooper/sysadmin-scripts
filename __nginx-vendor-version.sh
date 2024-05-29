#!/bin/bash
sudo /usr/sbin/nginx -v 2>&1 | tee -a ~/nginx-v > /dev/null \
&& cp ~/nginx-v ~/nginx-vendor \
&& cp ~/nginx-v ~/nginx-version \
&& sed -i -e "s/nginx version: //" ~/nginx-vendor \
&& sed -i -e "s/nginx.*/nginx/" ~/nginx-vendor \
&& sed -i -e "s/^[^0-9]*//" ~/nginx-version \
&& sed -i -e "s/[[:space:]].*//" ~/nginx-version \
&& sudo mv ~/nginx-v /etc/nginx-v \
&& sudo mv ~/nginx-vendor /etc/nginx-vendor \
&& sudo mv ~/nginx-version /etc/nginx-version \
&& sudo chown root:sudo \
/etc/nginx-v \
/etc/nginx-vendor \
/etc/nginx-version \
&& sudo chmod 775 \
/etc/nginx-v \
/etc/nginx-vendor \
/etc/nginx-version
