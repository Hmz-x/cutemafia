#!/bin/sh

proj="cutemafia"
[ ! -d /etc/nginx/sites-enabled ] && mkdir /etc/nginx/sites-enabled
sudo ln -s /etc/nginx/sites-available/"${proj}.conf" /etc/nginx/sites-enabled/"${proj}.conf"
