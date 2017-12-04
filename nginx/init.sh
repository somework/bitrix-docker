#!/bin/bash
set -e
if rm -rf /var/cache/nginx/resized ; then
  echo "proxy_cache 'resized' has been purged"
fi
if nginx -t 2>&1>/dev/null ; then
  echo "configuration check: OK"
fi
echo "starting.."
nginx
