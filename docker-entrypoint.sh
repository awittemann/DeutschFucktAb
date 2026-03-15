#!/bin/sh
set -e

# Replace __UNSPLASH_KEY__ placeholder with the value of UNSPLASH_ACCESS_KEY env var.
# If the env var is not set, the placeholder becomes an empty string (no photo shown).
sed "s|__UNSPLASH_KEY__|${UNSPLASH_ACCESS_KEY:-}|g" \
    /usr/share/nginx/html/index.html.tmpl \
    > /usr/share/nginx/html/index.html

exec nginx -g 'daemon off;'
