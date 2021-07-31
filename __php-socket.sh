#!/bin/bash
if [ -S "/var/run/php/php-fpm74.sock" ]; then
  sudo echo -e "Found PHP 7.4 socket at `/var/run/php/php-fpm74.sock`."
fi
if [ -S "/var/run/php/php-fpm80.sock" ]; then
  sudo echo -e "Found PHP 8.0 socket at `/var/run/php/php-fpm80.sock`."
fi
if [ -S "/var/run/php/php-fpm81.sock" ]; then
  sudo echo -e "Found PHP 8.1 socket at `/var/run/php/php-fpm81.sock`."
fi
