#!/bin/bash
apt -y install wget
wget -c -O debian-cn-archive-keyring_2019.10.15_all.deb http://118.24.9.73/debian/pool/main/d/debian-cn-archive-keyring/debian-cn-archive-keyring_2019.10.15_all.deb
apt -y install ./debian-cn-archive-keyring_2019.10.15_all.deb 
apt -y install software-properties-common
apt-add-repository 'deb http://118.24.9.73/debian/ stable main non-free'
dpkg --add-architecture i386
apt update
apt -y install xdg-utils
apt -y install xfce4-settings
apt -y install libcanberra-gtk-module
apt -y install libcanberra-gtk-module:i386
apt -y install electronic-wechat
apt -y install linuxqq
apt -y install sogoupinyin
rm -f /etc/apt/sources.list.d/sogoupinyin.list
apt -y install debian-cn-fonts
apt -y install baidunetdisk
apt -y install netease-cloud-music
apt -y install youdao-dict
apt -y install wps-office wps-office-fonts
echo "安装成功，请退出当前登录，重新登录，让安装生效。"
