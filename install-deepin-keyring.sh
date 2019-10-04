#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 deepin-keyring ...'
apt -y install ./deepin/deepin-keyring_2019.01.09-1+stable_all.deb
echo '安装完成'
