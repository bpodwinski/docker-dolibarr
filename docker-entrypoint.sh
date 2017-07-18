#!/bin/sh
set -e

chown -R www-data:www-data /var/www

exec "$@"