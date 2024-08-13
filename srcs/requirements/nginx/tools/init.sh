#!/bin/bash
mkdir -p /etc/nginx/ssl
openssl req -x509 -nodes -out /etc/nginx/ssl/transcendance.crt -keyout /etc/nginx/ssl/transcendance.key -subj "/C=FR/ST=IDF/L=Paris/O=42/OU=42/CN=test.fr/UID=hmelica"
rm -rf /etc/nginx/nginx.conf
rm -rf /etc/nginx/sites-enabled/default
mkdir -p /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html
chown -R www-data:www-data /usr/share/nginx/html

echo "coucou :)" > /usr/share/nginx/html/file.html
