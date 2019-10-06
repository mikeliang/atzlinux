#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装  ...'
./install-deepin-keyring.sh  
./deepin/add-deepin-repo.sh
apt -y install deepin-wine deepin-wine-helper:i386 deepin-wine-plugin deepin-wine-plugin-virtual deepin-wine-uninstaller:i386 deepin-wine32-preloader:i386
echo '安装完成，正在自动安装依赖...'
apt install -f
./deepin/uninstall-deepin-keyring.sh
./deepin/clear-deepin-repo.sh
