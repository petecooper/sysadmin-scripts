#!/bin/bash
if [ -S "/var/run/php/php-fpm74.sock" ]; then
  echo -e "Found PHP 7.4 socket at \`/var/run/php/php-fpm74.sock\`."
  echo -e "Socket used by..."
  if [ -d "/etc/nginx/servers-available/" ]; then
    egrep -lir "php-fpm74.sock" /etc/nginx/servers-available/ | sed 's/\/etc\/nginx\/servers-available\//->/g'
  fi
  if [ -d "/etc/nginx/sites-available/" ]; then
    egrep -lir "php-fpm74.sock" /etc/nginx/sites-available/ | sed 's/\/etc\/nginx\/sites-available\//->/g'
  fi
fi
if [ -S "/var/run/php/php-fpm80.sock" ]; then
  echo -e "\nFound PHP 8.0 socket at \`/var/run/php/php-fpm80.sock\`."
fi
if [ -S "/var/run/php/php-fpm81.sock" ]; then
  echo -e "\nFound PHP 8.1 socket at \`/var/run/php/php-fpm81.sock\`."
fi
