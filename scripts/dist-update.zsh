#!/bin/zsh
echo '' > /etc/apt/sources.list
echo 'deb http://deb.debian.org/debian sid main contrib non-free' >> /etc/apt/sources.list 
echo 'deb http://deb.debian.org/debian experimental main contrib non-free' >> /etc/apt/sources.list 
apt-get update
apt-get dist-upgrade
