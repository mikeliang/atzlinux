#!/bin/bash
apt -y install wget
wget -c -O ./debian-cn-keyring/debian-cn-archive-keyring_2019.10.15_all.deb http://118.24.9.73/debian/pool/main/d/debian-cn-archive-keyring/debian-cn-archive-keyring_2019.10.15_all.deb
apt -y install ./debian-cn-keyring/debian-cn-archive-keyring_2019.10.15_all.deb 
apt -y install software-properties-common
apt-add-repository 'deb http://118.24.9.73/debian/ stable main non-free'
dpkg --add-architecture i386
apt update
apt -y install  \
baidunetdisk \
netease-cloud-music \
deepin.com.qq.im \
sogoupinyin \
electronic-wechat \
youdao-dict \
wps-office wps-office-fonts
rm -fv /etc/apt/sources.list.d/sogoupinyin.list
