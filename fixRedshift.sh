#!/bin/sh

sudo apt install redshift redshift-gtk
timeout 5s redshift-gtk
sudo cp redshift.conf ~/.config/
cd ~/.config/
cat redshift.conf