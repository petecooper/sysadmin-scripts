#!/bin/bash
if \
[ -S "/var/run/php/php-fpm85.sock" ] \
; then
echo -e "\nFound PHP 8.5 socket at \`/var/run/php/php-fpm85.sock\`." \
&& if \
[ -d "/opt/nginx/servers-available/" ] \
; then \
grep -lir "php-fpm85.sock" /opt/nginx/servers-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
&& if \
[ -d "/opt/nginx/sites-available/" ] \
; then \
grep -lir "php-fpm85.sock" /opt/nginx/sites-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
; fi \
&& if \
[ -S "/var/run/php/php-fpm84.sock" ] \
; then
echo -e "\nFound PHP 8.4 socket at \`/var/run/php/php-fpm84.sock\`." \
&& if \
[ -d "/opt/nginx/servers-available/" ] \
; then \
grep -lir "php-fpm84.sock" /opt/nginx/servers-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
&& if \
[ -d "/opt/nginx/sites-available/" ] \
; then \
grep -lir "php-fpm84.sock" /opt/nginx/sites-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
; fi \
&& if \
[ -S "/var/run/php/php-fpm83.sock" ] \
; then
echo -e "\nFound PHP 8.3 socket at \`/var/run/php/php-fpm83.sock\`." \
&& if \
[ -d "/opt/nginx/servers-available/" ] \
; then \
grep -lir "php-fpm83.sock" /opt/nginx/servers-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
&& if \
[ -d "/opt/nginx/sites-available/" ] \
; then \
grep -lir "php-fpm83.sock" /opt/nginx/sites-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
; fi \
&& if \
[ -S "/var/run/php/php-fpm82.sock" ] \
; then
echo -e "\nFound PHP 8.2 socket at \`/var/run/php/php-fpm82.sock\`." \
&& if \
[ -d "/opt/nginx/servers-available/" ] \
; then \
grep -lir "php-fpm82.sock" /opt/nginx/servers-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
&& if \
[ -d "/opt/nginx/sites-available/" ] \
; then \
grep -lir "php-fpm82.sock" /opt/nginx/sites-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
; fi \
&& if \
[ -S "/var/run/php/php-fpm81.sock" ] \
; then
echo -e "\nFound PHP 8.1 socket at \`/var/run/php/php-fpm81.sock\`." \
&& if \
[ -d "/opt/nginx/servers-available/" ] \
; then \
grep -lir "php-fpm81.sock" /opt/nginx/servers-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
&& if \
[ -d "/opt/nginx/sites-available/" ] \
; then \
grep -lir "php-fpm81.sock" /opt/nginx/sites-available/ | \
\
sed 's/^/-> /g' | \
\
sort \
; fi \
; fi
