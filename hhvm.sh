#!/bin/bash

wget -O - http://dl.hhvm.com/conf/hhvm.gpg.key | sudo apt-key add -
echo deb http://dl.hhvm.com/ubuntu xenial main | sudo tee /etc/apt/sources.list.d/hhvm.list
apt-get update
apt-get install nginx hhvm -y
/usr/share/hhvm/install_fastcgi.sh
