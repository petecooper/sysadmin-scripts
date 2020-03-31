#!/bin/bash
/etc/php/7.3/sbin/php-fpm -v
if [ $? -eq 0 ]
then
  echo "Y"
  exit 0
else
  echo "N" >&2
  exit 1
fi
