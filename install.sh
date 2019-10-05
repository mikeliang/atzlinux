#!/bin/bash
cd `dirname $0`; pwd
echo "开始安装 Debian 中文套件 ..."

echo "开始安装 wine32 ..."
./install-wine32.sh

echo "开始安装 qq ..."
./install-qq.sh

echo "开始安装 wechat ..."
./install-wechat.sh

echo "开始安装 baidunetdisk ..."
./install-baidunetdisk.sh

echo "开始安装 netease-cloud-music ..."
./install-netease-cloud-music.sh 

echo "开始安装 sogoupinyin ..."
./install-sogoupinyin.sh

echo "开始安装 wps ..."
./install-wps.sh

echo "开始安装 youdao-dict ..."
./install-youdao-dict.sh

echo "恭喜您！安装完成！谢谢使用 Debian-cn 中文套件！"
