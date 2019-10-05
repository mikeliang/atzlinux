#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装  ...'
./install-deepin-keyring.sh  
echo '增加 deepin 软件包安装仓库'
apt-add-repository 'deb http://mirrors.huaweicloud.com/deepin stable main non-free contrib'
dpkg --add-architecture i386
apt update
apt -y install deepin-wine deepin-wine-helper:i386 deepin-wine-plugin deepin-wine-plugin-virtual deepin-wine-uninstaller:i386 deepin-wine32-preloader:i386
echo '安装完成，正在自动安装依赖...'
apt install -f
echo '清理 deepin 软件包安装仓库'
apt-add-repository -r 'deb http://mirrors.huaweicloud.com/deepin stable main non-free contrib'
./deepin/uninstall-deepin-keyring.sh
rm -fv /var/lib/apt/lists/*deepin*
apt update
