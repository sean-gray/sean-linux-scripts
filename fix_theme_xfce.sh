#!/bin/sh

#setting Gtk theme

echo "#########################"
echo "Setting Gtk Theme"
echo "#########################"
cd Themes
cd Marwaita-master
cp -R * /usr/share/themes/
xfconf-query -c xsettings -p /Net/ThemeName -s "Marwaita Dark"
cd ..
echo "#########################"


#setting Icon theme
echo "#########################"
echo "Setting Icon Theme"
echo "#########################"
cd vimix-icon-theme-master
sh install.sh
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vimix dark"
cd ..
sudo update-icon-caches /usr/share/icons/*

echo "#########################"


#setting font 
echo "#########################"
echo "Setting Fonts"
echo "#########################"
cd Roboto
cp *.ttf /usr/share/fonts/truetype/

fc-cache -fv
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto 11"
xfconf-query -c xsettings -p /Gtk/MonospaceFontName -s "Roboto Mono 11"
cd ..
echo "#########################"


#setting panel Size 
echo "#########################"
echo "Setting Panel Size"
echo "#########################"

xfconf-query -c xfce4-panel -p /panels/panel-0/size -s "30"