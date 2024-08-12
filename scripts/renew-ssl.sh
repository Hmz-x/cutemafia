#!/bin/sh

# unrelated nginx config stuff
[ ! -d /etc/nginx/logs ] && sudo mkdir /etc/nginx/logs
[ ! -r /etc/ssl/certs/dhparam.pem ] && 
  sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048

# Actual renewal
domain="poshgang.org"
sudo certbot certonly --manual -d "$domain" -d "*.${domain}" \
	--preferred-challenges dns --force-renew
