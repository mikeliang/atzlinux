#!/bin/bash
cd `dirname $0`; pwd
echo "开始卸载 Debian 中文套件 ... ：-（..."

echo "开始卸载 deepin-keyring  ..."
./deepin/uninstall-deepin-keyring.sh

echo "开始卸载  qq ..."
./qq/uninstall-qq.sh

echo "开始卸载  wine32 ..."
./deepin-wine32/uninstall-wine32.sh

echo "开始卸载 wechat ..."
./wechat/uninstall-wechat.sh

echo "开始卸载 baidunetdisk ..."
./baidunetdisk/uninstall-baidunetdisk.sh

echo "开始卸载 netease-cloud-music ...."
./netease-cloud-music/uninstall-netease-cloud-music.sh

echo "开始卸载 youdao-dict ..."
./youdao-dict/uninstall-youdao-dict.sh

echo "开始卸载 sogoupinyin ..."
./sogoupinyin/uninstall-sogoupinyin.sh

echo "开始卸载 wps ..."
./wps/uninstall-wps.sh

echo "开始卸载 ..."
