#!/bin/bash
set -e

echo "START before_install"

sudo apt -y update

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# export 
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install 14.15.4
nvm use 14.15.4

sudo apt -y install netcat

#apt install nginx -y

curl –sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt -y install nodejs

sudo npm install pm2 -g
sudo pm2 update

echo "END before_install"
