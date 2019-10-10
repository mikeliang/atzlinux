#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 Debian QQ ...'
apt install ./qq/deepin.com.qq.im_8.9.19983deepin23_i386.deb
echo '安装完成，正在自动安装依赖...'
apt -f -y install 
echo '修改 QQ 在 Debian 的应用程序菜单分类到互联网 ...'
sed -i s/chat/Network/ /usr/share/applications/deepin.com.qq.im.desktop
echo '请到应用程序菜单栏启动 QQ。打开路径：所有应用程序--》互联网--》QQ' 
