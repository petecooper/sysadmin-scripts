#!/bin/bash
echo "Checking for PHP 7.1..."
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
else
  echo "No"
fi
echo "Checking for PHP 7.2..."
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
else
  echo "No"
fi
echo "Checking for PHP 7.3..."
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
else
  echo "No"
fi
echo "Checking for PHP 7.4..."
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
else
  echo "No"
fi
echo "Checking for PHP source..."
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo "Yes"
else
  echo "No"
fi
