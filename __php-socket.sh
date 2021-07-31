#!/bin/bash
if [ -f "/var/run/php/php-fpm74.sock" ]; then
  echo -e "Found PHP 7.4 socket at `/var/run/php/php-fpm74.sock`."
fi
if [ -f "/var/run/php/php-fpm80.sock" ]; then
  echo -e "Found PHP 8.0 socket at `/var/run/php/php-fpm80.sock`."
fi
if [ -f "/var/run/php/php-fpm81.sock" ]; then
  echo -e "Found PHP 8.1 socket at `/var/run/php/php-fpm81.sock`."
fi
