#!/bin/bash
/usr/local/bin/php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "symlink: PHP "$(/usr/local/bin/php -r 'echo PHP_VERSION;')
fi
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.0     PHP CLI: PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.0 PHP-FPM CLI: PHP "$(/etc/php/7.0/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.0 PHP CLI SSL:" $(/etc/php/7.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.1     PHP CLI: PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.1 PHP-FPM CLI: PHP "$(/etc/php/7.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.1 PHP CLI SSL:" $(/etc/php/7.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.2     PHP CLI: PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.2 PHP-FPM CLI: PHP "$(/etc/php/7.2/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.2 PHP CLI SSL:" $(/etc/php/7.2/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.3     PHP CLI: PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.3 PHP-FPM CLI: PHP "$(/etc/php/7.3/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.3 PHP CLI SSL:" $(/etc/php/7.3/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.4     PHP CLI: PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.4 PHP-FPM CLI: PHP "$(/etc/php/7.4/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.4 PHP CLI SSL:" $(/etc/php/7.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n8.0     PHP CLI: PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.0 PHP-FPM CLI: PHP "$(/etc/php/8.0/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "8.0 PHP CLI SSL:" $(/etc/php/8.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/8.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n8.1     PHP CLI: PHP "$(/etc/php/8.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.1 PHP-FPM CLI: PHP "$(/etc/php/8.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "8.1 PHP CLI SSL:" $(/etc/php/8.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\nsrc     PHP CLI: PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
  echo -e "src PHP-FPM CLI: PHP "$(/etc/php/php-src/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "src PHP CLI SSL:" $(/etc/php/php-src/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
