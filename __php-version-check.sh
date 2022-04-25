#!/bin/bash
/usr/local/bin/php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "symlink: PHP "$(/usr/local/bin/php -r 'echo PHP_VERSION;')
fi
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.0     php CLI: PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.0 php-fpm CLI: PHP "$(/etc/php/7.0/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.0 php CLI SSL:" $(/etc/php/7.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "7.0 php-fpm SSL:" $(/etc/php/7.0/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.1     php CLI: PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.1 php-fpm CLI: PHP "$(/etc/php/7.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.1 php CLI SSL:" $(/etc/php/7.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "7.1 php-fpm SSL:" $(/etc/php/7.1/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.2     php CLI: PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.2 php-fpm CLI: PHP "$(/etc/php/7.2/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.2 php CLI SSL:" $(/etc/php/7.2/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "7.2 php-fpm SSL:" $(/etc/php/7.2/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.3     php CLI: PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.3 php-fpm CLI: PHP "$(/etc/php/7.3/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.3 php CLI SSL:" $(/etc/php/7.3/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "7.3 php-fpm SSL:" $(/etc/php/7.3/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n7.4     php CLI: PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')
  echo -e "7.4 php-fpm CLI: PHP "$(/etc/php/7.4/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "7.4 socket test: PHP" $(curl -s 'http://127.0.0.1:874/php-fpm-ver.php')
  echo -e "7.4 php CLI SSL:" $(/etc/php/7.4/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "7.4 php-fpm SSL:" $(/etc/php/7.4/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n8.0     php CLI: PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.0 php-fpm CLI: PHP "$(/etc/php/8.0/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "8.0 socket test: PHP" $(curl -s 'http://127.0.0.1:880/php-fpm-ver.php')
  echo -e "8.0 php CLI SSL:" $(/etc/php/8.0/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "8.0 php-fpm SSL:" $(/etc/php/8.0/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
/etc/php/8.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n8.1     php CLI: PHP "$(/etc/php/8.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.1 php-fpm CLI: PHP "$(/etc/php/8.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "8.1 socket test: PHP" $(curl -s 'http://127.0.0.1:881/php-fpm-ver.php')
  echo -e "8.1 php CLI SSL:" $(/etc/php/8.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "8.1 php-fpm SSL:" $(/etc/php/8.1/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')

fi
/etc/php/8.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\n8.2     php CLI: PHP "$(/etc/php/8.1/bin/php -r 'echo PHP_VERSION;')
  echo -e "8.2 php-fpm CLI: PHP "$(/etc/php/8.1/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "8.2 socket test: PHP" $(curl -s 'http://127.0.0.1:882/php-fpm-ver.php')
  echo -e "8.2 php CLI SSL:" $(/etc/php/8.1/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "8.2 php-fpm SSL:" $(/etc/php/8.1/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')

fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "\nsrc     php CLI: PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')
  echo -e "src php-fpm CLI: PHP "$(/etc/php/php-src/sbin/php-fpm -i | grep "PHP Version" | head -1 | sed 's/.*=> //')
  echo -e "src php CLI SSL:" $(/etc/php/php-src/bin/php -r 'echo OPENSSL_VERSION_TEXT;')
  echo -e "src php-fpm SSL:" $(/etc/php/php-src/sbin/php-fpm -i | grep "OpenSSL Library Version" | sed 's/.*=> //')
fi
