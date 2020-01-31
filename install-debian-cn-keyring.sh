#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装铜豌豆软件源 atzlinux.com ...'
apt -y install wget
wget -c -O atzlinux-archive-keyring_lastest_all.deb https://www.atzlinux.com/debian/pool/main/a/atzlinux-archive-keyring/atzlinux-archive-keyring_lastest_all.deb
apt -y install ./atzlinux-archive-keyring_lastest_all.deb
echo '安装完成'
