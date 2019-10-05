#!/bin/bash
cd wechat
cd `dirname $0`; pwd
echo '即将开始安装 ...'
wget -c -O electronic-wechat_2.0.1_amd64.deb  http://archive.ubuntukylin.com/ubuntukylin/pool/main/e/electronic-wechat/electronic-wechat_2.0.1_amd64.deb 

apt -y install ./electronic-wechat_2.0.1_amd64.deb

cd ..
