#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始  ...'
../install-deepin-keyring.sh  
../deepin/add-deepin-repo.sh
apt -y install deepin.com.qq.im:i386
echo '安装完成，正在自动安装依赖...'
apt -f -y install
../deepin/uninstall-deepin-keyring.sh
../deepin/clear-deepin-repo.sh
