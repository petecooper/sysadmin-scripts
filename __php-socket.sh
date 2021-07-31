#!/bin/bash
if [ -S "/var/run/php/php-fpm74.sock" ]; then
  echo -e "Found PHP 7.4 socket."
fi
if [ -S "/var/run/php/php-fpm80.sock" ]; then
  echo -e "Found PHP 8.0 socket."
fi
if [ -S "/var/run/php/php-fpm81.sock" ]; then
  echo -e "Found PHP 8.1 socket."
fi
