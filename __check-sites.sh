#!/bin/bash
while read site; \
do printf "$site" \
&& printf ": " \
&& curl -Is --cert-status https://"$site" | grep "^HTTP" | cat; \
done < /var/www/sites/sites.txt
