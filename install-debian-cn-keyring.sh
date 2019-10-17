#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 debian-cn-keyring ...'
atp -y install wget
wget -c -O ./debian-cn-keyring/debian-cn-archive-keyring_2019.10.15_all.deb http://118.24.9.73/debian/pool/main/d/debian-cn-archive-keyring/debian-cn-archive-keyring_2019.10.15_all.deb
apt -y install ./debian-cn-keyring/debian-cn-archive-keyring_2019.10.15_all.deb 
echo '安装完成'
