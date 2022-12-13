#!/bin/bash
set -e

echo "START before_install"

apt -y update

apt -y install nc

curl –sL https://deb.nodesource.com/setup_14.x | sudo bash -
apt -y install nodejs

npm install -g pm2
pm2 update

echo "END before_install"
