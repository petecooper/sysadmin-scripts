#!/bin/bash
if [ -S "/var/run/php/php-fpm81.sock" ]; then
  echo -e "\nFound PHP 8.1 socket at \`/var/run/php/php-fpm81.sock\`."
  if [ -d "/etc/nginx/servers-available/" ]; then
    egrep -lir "php-fpm81.sock" /etc/nginx/servers-available/ | sed 's/^/-> /g' | sort
  fi
  if [ -d "/etc/nginx/sites-available/" ]; then
    egrep -lir "php-fpm81.sock" /etc/nginx/sites-available/ | sed 's/^/-> /g' | sort
  fi
fi
if [ -S "/var/run/php/php-fpm82.sock" ]; then
  echo -e "\nFound PHP 8.2 socket at \`/var/run/php/php-fpm82.sock\`."
  if [ -d "/etc/nginx/servers-available/" ]; then
    egrep -lir "php-fpm82.sock" /etc/nginx/servers-available/ | sed 's/^/-> /g' | sort
  fi
  if [ -d "/etc/nginx/sites-available/" ]; then
    egrep -lir "php-fpm82.sock" /etc/nginx/sites-available/ | sed 's/^/-> /g' | sort
  fi
fi
if [ -S "/var/run/php/php-fpm83.sock" ]; then
  echo -e "\nFound PHP 8.3 socket at \`/var/run/php/php-fpm83.sock\`."
  if [ -d "/etc/nginx/servers-available/" ]; then
    egrep -lir "php-fpm83.sock" /etc/nginx/servers-available/ | sed 's/^/-> /g' | sort
  fi
  if [ -d "/etc/nginx/sites-available/" ]; then
    egrep -lir "php-fpm83.sock" /etc/nginx/sites-available/ | sed 's/^/-> /g' | sort
  fi
fi
