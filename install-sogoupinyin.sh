#!/bin/bash
cd `dirname $0`; pwd

./install-debian-cn-repo.sh

echo '即将开始安装 ...'

apt -y install sogoupinyin

rm -fv /etc/apt/sources.list.d/sogoupinyin.list

echo '搜狗拼音输入法安装完成后，需要退出当前登录的图像界面，再重新登录，才能够让搜狗输入法生效。'
