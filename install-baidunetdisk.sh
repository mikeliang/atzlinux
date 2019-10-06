#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 ...'

# 安装 update-desktop-database 命令
apt -y install desktop-file-utils

apt -y install ./baidunetdisk/baidunetdisk_linux_2.0.2.deb
