#!/bin/bash
echo "Checking for PHP 7.3..."
/etc/php/7.3/sbin/php-fpm -v > /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
fi
echo "Checking for PHP 7.4..."
/etc/php/7.4/sbin/php-fpm -v > /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
fi
