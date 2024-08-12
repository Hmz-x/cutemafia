#!/bin/sh

proj="poshgang"
[ ! -d /etc/nginx/sites-enabled ] && mkdir /etc/nginx/sites-enabled
sudo ln -sf /etc/nginx/sites-available/"${proj}.conf" /etc/nginx/sites-enabled/"${proj}.conf"
