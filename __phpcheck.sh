#!/bin/bash
/etc/php/7.3/sbin/php-fpm -v > /dev/null
if [ $? -eq 0 ]
then
  echo "PHP 7.3"
  exit 0
else
  exit 1
fi
