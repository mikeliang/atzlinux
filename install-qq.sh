#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始安装 Debian QQ ...'
sudo dpkg -i ./qq/deepin.com.qq.im_8.9.19983deepin23_i386.deb
echo '安装完成，正在自动安装依赖...'
sudo apt install -f
echo '修改 QQ 在 Debian 的应用程序菜单分类到互联网 ...'
sudo sed -i s/chat/Network/ /usr/share/applications/deepin.com.qq.im.desktop
echo '启动 QQ ...' 
"/opt/deepinwine/apps/Deepin-QQ/run.sh" -u %u &
echo '出现 QQ 登录界面后，QQ 就已经安装完成。请关闭该终端窗口，忽略终端窗口的提示信息'
