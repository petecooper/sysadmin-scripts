#!/bin/bash
while read -r site; \
do printf "$site" \
&& printf ": " \
&& curl -Is https://"$site" | grep "^HTTP" | cat; \
done < /var/www/sites/_sites.txt
