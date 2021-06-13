#!/bin/sh


echo "=================================="

echo "Current Max User watches"

cat /proc/sys/fs/inotify/max_user_watches


echo "=================================="

echo "Setting Max User watches"

echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf

echo "=================================="

echo "Reloading Max User watches"

sudo sysctl -p

echo "=================================="


echo "Current Max User watches"

cat /proc/sys/fs/inotify/max_user_watches


echo "=================================="