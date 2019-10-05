#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 ...'
apt -y install ./wechat/electronic-wechat_2.0.1_amd64.deb
