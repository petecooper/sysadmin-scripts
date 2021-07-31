#!/bin/bash
if [ -S "/var/run/php/php-fpm74.sock" ]; then
  echo -e "Found PHP 7.4 socket at \`/var/run/php/php-fpm74.sock\`."
  if [ -d "/etc/nginx/servers-available/" ]; then
    egrep -lir "php-fpm74.sock" /etc/nginx/servers-available/ | sort
  fi
  if [ -d "/etc/nginx/sites-available/" ]; then
    egrep -lir "php-fpm74.sock" /etc/nginx/sites-available/ | sort
  fi
fi
if [ -S "/var/run/php/php-fpm80.sock" ]; then
  echo -e "Found PHP 8.0 socket at \`/var/run/php/php-fpm80.sock\`."
fi
if [ -S "/var/run/php/php-fpm81.sock" ]; then
  echo -e "Found PHP 8.1 socket at \`/var/run/php/php-fpm81.sock\`."
fi
