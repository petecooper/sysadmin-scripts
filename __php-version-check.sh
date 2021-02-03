#!/bin/bash
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')" installed"
fi
/usr/local/bin/php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "symlink set"
fi
