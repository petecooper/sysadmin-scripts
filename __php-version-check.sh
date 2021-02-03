#!/bin/bash
/usr/local/bin/php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "symlink: PHP "$(/usr/local/bin/php -r 'echo PHP_VERSION;')
fi
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "7.0 CLI: PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')" (EOL)"
  echo -e "7.0 SSL:" $(/etc/php/7.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "7.1 CLI: PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')" (EOL)"
  echo -e "7.1 SSL:" $(/etc/php/7.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "7.2 CLI: PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')" (EOL)"
  echo -e "7.2 SSL:" $(/etc/php/7.2/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "7.3 CLI: PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.3 SSL:" $(/etc/php/7.3/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "7.4 CLI: PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.4 SSL:" $(/etc/php/7.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "8.0 CLI: PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.0 SSL:" $(/etc/php/8.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "src CLI: PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
  echo -e "src SSL:" $(/etc/php/php-src/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
