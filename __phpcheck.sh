#!/bin/bash
echo -e "******************************"
echo -e "* Starting legacy PHP checks *"
echo -e "******************************"
echo -e "==> Checking for PHP 7.0..."
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Yes"
else
  echo -e "No"
fi
echo -e "==> Checking for PHP 7.1..."
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Yes"
else
  echo -e "No"
fi
echo -e "==> Checking for PHP 7.2..."
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Yes"
else
  echo -e "No"
fi
echo -e "********************************"
echo -e "* Starting mainline PHP checks *"
echo -e "********************************"
echo -e "==> Checking for PHP 7.3..."
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php73ver=$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "Yes" $php73ver
else
  echo -e "No"
fi
echo -e "==> Checking for PHP 7.4..."
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Yes"
else
  echo -e "No"
fi
echo -e "***********************************"
echo -e "* Starting development PHP checks *"
echo -e "***********************************"
echo -e "==> Checking for PHP source..."
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Yes"
else
  echo -e "No"
fi
