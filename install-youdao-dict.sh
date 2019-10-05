#!/bin/bash
cd youdao-dict
cd `dirname $0`; pwd
echo '即将开始安装 ...'
wget -c -O youdao-dict_1.1.0-0-deepin_amd64.deb http://codown.youdao.com/cidian/linux/youdao-dict_1.1.0-0-deepin_amd64.deb

apt -y install ./youdao-dict_1.1.0-0-deepin_amd64.deb

patch -p 1 /usr/share/youdao-dict/dae/ewmh.py < youdao-dict.patch

cd ..
