#!/bin/bash
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')" (EOL: 10 Jan 2019)"
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')" (EOL: 1 Dec 2019)"
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')" (EOL: 30 Nov 2020)"
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')" (EOL: 6 Dec 2021)"
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')" (EOL: 28 Nov 2022)"
  echo -e "SSL:" $(/etc/php/7.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')" (EOL: 26 Nov 2023)"
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "Found: PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
fi
/usr/local/bin/php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\`php\`: PHP "$(/usr/local/bin/php -r 'echo PHP_VERSION;')
fi
