#!/bin/sh

add-apt-repository -y ppa:mozillacorp/mozillavpn
apt update
apt install -y mozillavpn
