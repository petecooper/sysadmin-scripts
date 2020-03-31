#!/bin/bash
/etc/php/7.3/sbin/php-fpm -v
if [ $? -eq 0 ]
then
  echo "[\xE2\x9C\x94] PHP 7.3"
  exit 0
else
  echo "[X] PHP 7.3" >&2
  exit 1
fi
