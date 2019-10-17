#!/bin/bash
echo "开始安装 Debian-cn 中文套件 ..."

./install-debian-cn-repo.sh

apt -y install xdg-utils

apt -y install  \
baidunetdisk \
netease-cloud-music \
deepin.com.qq.im \
sogoupinyin \
electronic-wechat \
youdao-dict \
wps-office wps-office-fonts

rm -fv /etc/apt/sources.list.d/sogoupinyin.list
