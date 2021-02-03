#!/bin/bash
/etc/php/7.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.0/bin/php -r 'echo PHP_VERSION;')" installed (7.0 binary)"
fi
/etc/php/7.1/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.1/bin/php -r 'echo PHP_VERSION;')" installed (7.1 binary)"
fi
/etc/php/7.2/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.2/bin/php -r 'echo PHP_VERSION;')" installed (7.2 binary)"
fi
/etc/php/7.3/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.3/bin/php -r 'echo PHP_VERSION;')" installed (7.3 binary)"
fi
/etc/php/7.4/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/7.4/bin/php -r 'echo PHP_VERSION;')" installed (7.4 binary)"
fi
/etc/php/8.0/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/8.0/bin/php -r 'echo PHP_VERSION;')" installed (8.0 binary)"
fi
/etc/php/php-src/sbin/php-fpm -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(/etc/php/php-src/bin/php -r 'echo PHP_VERSION;')" installed (php-src binary)"
fi
php -v &> /dev/null
if [ $? -eq 0 ]
then
  echo -e "PHP "$(php -r 'echo PHP_VERSION;')" set up as `php` symlink"
fi
