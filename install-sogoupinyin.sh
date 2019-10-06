#!/bin/bash
cd sogoupinyin
cd `dirname $0`; pwd
echo '即将开始安装 ...'
wget -c -O  sogoupinyin_2.2.0.0108_amd64.deb "http://cdn2.ime.sogou.com/dl/index/1524572264/sogoupinyin_2.2.0.0108_amd64.deb?st=BN0Em1lJ_UaP3N9q5i3L9A&e=1570243807&fn=sogoupinyin_2.2.0.0108_amd64.deb"

apt -y install ./sogoupinyin_2.2.0.0108_amd64.deb

cd ..

echo '搜狗拼音输入法安装完成后，需要退出当前登录的图像界面，再重新登录，才能够让搜狗输入法生效。'
