#!/bin/bash
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_70_ver=$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_70_ver" installed"
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_71_ver=$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_71_ver" installed"
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_72_ver=$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_72_ver" installed"
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_73_ver=$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_73_ver" installed"
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_74_ver=$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_74_ver" installed"
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  php_src_ver=$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
  echo -e "PHP "$php_src_ver" installed"
fi
