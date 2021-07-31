#!/bin/bash
sudo nginx -t \
&& sudo systemctl restart nginx \
&& while read site; \
do printf "$site" \
&& printf ": " \
&& curl -Is https://"$site" | grep "^HTTP" | cat; \
done < /var/www/sites/_sites.txt
