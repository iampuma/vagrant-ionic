#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y git curl zip
# install node and npm
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs
# Install ruby-dev
sudo apt-get install -y ruby-dev
# Install sass and compass cli
sudo gem install sass compass
# Install frontend tools bower, gulp, yo and grunt.
sudo npm install -g bower gulp grunt-cli yo
# Install cordova and ionic.
sudo npm install -g cordova ionic