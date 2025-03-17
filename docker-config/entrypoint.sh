##!/bin/sh
#set -e
#
#while [ ! -d /var/www/html/ApiCodeine ]; do
#  echo "En attente des fichiers Symfony dans /var/www/html..."
#  sleep 2
#done
#
#symfony server:ca:install || true
#symfony serve --allow-all-ip --no-tls &
#
#echo "ServerName localhost" >> /etc/apache2/apache2.conf
#
#exec docker-php-entrypoint apache2-foreground
