#!/bin/bash
#script for renewing ssl certs with letsencrypt and nginx

#need sudo

cd /opt/letsencrypt
sudo git pull
sudo systemctl stop nginx
./letsencrypt-auto renew
sudo systemctl start nginx

