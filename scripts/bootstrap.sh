#!/usr/bin/env bash

# This is the bootstrap file for a Kaiios Software Inc. Vagrant Box.
# It should provision the VM with the following:
#   VIM - Text Editor
#   GIT
#	node.js
#	Express

# Update apt
apt-get update

# VIM
apt-get install -y vim

# GIT
apt-get install -y git-core

# node.js
apt-get install -y g++ curl libssl-dev apache2-utils make
git clone git://github.com/joyent/node.git
cd node
# Switch to stable branch
git checkout v0.10.18-release
./configure
make
make install

# Don't forget to go back to the root directory
cd ..

# Express
npm install -g express
