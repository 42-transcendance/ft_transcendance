#!/bin/bash
mkdir -p /etc/nginx/ssl
openssl req -x509 -nodes -out /etc/nginx/ssl/transcendance.crt -keyout /etc/nginx/ssl/transcendance.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=test.fr/UID=hmelica"
rm -rf /etc/nginx/nginx.conf # removing default configuration file and replacing it
rm -rf /etc/nginx/conf.d/default.conf # removing default configuration website and replacing it
rm -rf /etc/nginx/sites-enabled/default # removing default website and replacing it
rm -rf /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh # the target file of this does not exists anymore
mkdir -p /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html
chown -R nginx:nginx /usr/share/nginx/html

echo "coucou :)" > /usr/share/nginx/html/file.html
