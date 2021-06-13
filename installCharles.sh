#!/bin/sh

wget -q -O - https://www.charlesproxy.com/packages/apt/PublicKey | sudo apt-key add -

sh -c 'echo deb https://www.charlesproxy.com/packages/apt/ charles-proxy main > /etc/apt/sources.list.d/charles.list'

apt update

apt install charles-proxy