adduser app #create user
usermod -aG sudo app #give sudo privilegies#!/bin/bash

sudo mkdir /data /data/app /data/log /data/app/shared /data/app/shared/bundle /data/app/shared/config /data/app/shared/public /data/app/shared/tmp /data/app/shared/tmp/pids /data/app/shared/tmp/sockets
sudo chown -R app:sudo /data
sudo chmod -R 771 /data
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install curl git-core nginx -y
sudo apt-get install postgresql postgresql-contrib -y
sudo apt-get install libpq-dev -y
sudo adduser www-data sudo
curl -sSL https://get.rvm.io | bash
source /home/linaro/.rvm/scripts/rvm
rvm requirements
rvm install 2.6.2
rvm use 2.6.2 --default
sudo chmod -R 771 /var/lib
sudo apt-get install rubygems -y
gem install rails
gem install bundler

sudo chmod -R 700 /var/lib/postgresql/9.6/main

wget -qO- https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn -y
