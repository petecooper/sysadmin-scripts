#!/bin/bash
echo -e "******************************"
echo -e "* Starting legacy PHP checks *"
echo -e "******************************"
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php70ver=$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php70ver" installed"
else
  echo -e "No"
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php71ver=$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php71ver" installed"
else
  echo -e "No"
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php72ver=$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php72ver" installed"
else
  echo -e "No"
fi
echo -e "********************************"
echo -e "* Starting mainline PHP checks *"
echo -e "********************************"
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php73ver=$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php73ver" installed"
else
  echo -e "No"
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php74ver=$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php74ver" installed"
else
  echo -e "No"
fi
echo -e "***********************************"
echo -e "* Starting development PHP checks *"
echo -e "***********************************"
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  phpsrcver=$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$phpsrcver" installed"
else
  echo -e "No"
fi
