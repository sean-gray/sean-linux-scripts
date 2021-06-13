#!/bin/sh



mkdir ~/.local/npm



echo 'export PATH=~/.local/npm/bin:$PATH' >> ~/.bashrc
echo 'export PATH=~/Applications/node/bin:$PATH' >> ~/.bashrc

source ~/.bashrc

echo 'Checking node version'
node -v
echo 'Checking npm version'
npm -v


npm config set prefix '~/.local/npm'
