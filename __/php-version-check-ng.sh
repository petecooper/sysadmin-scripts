#!/bin/bash
if \
    [[ -f /etc/php-php-prefix ]] \
; then \
    php_prefix="$(< /etc/php-php-prefix)" \
    && echo -e '=> `/etc/php-php-prefix` found.' \
    && if \
        [[ -d "$php_prefix" ]] \
    ; then \
       echo -e '=> PHP prefix dir found.' \
    ; else \
       echo -e '=> PHP prefix dir NOT found.' \
    ; fi \
; else \
    echo -e '`=> /etc/php-php-prefix` NOT found.' \
; fi
