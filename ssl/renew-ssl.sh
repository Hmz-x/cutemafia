#!/bin/sh

domain="cutemafia.org"
sudo certbot certonly --manual -d "$domain" -d "*.${domain}" \
	--preferred-challenges dns --force-renew
