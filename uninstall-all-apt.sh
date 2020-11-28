#!/bin/bash
echo "开始卸载 atzlinux 中文套件 ..."

apt -y purge  \
baidunetdisk \
netease-cloud-music \
sogoupinyin \
electronic-wechat \
youdao-dict \
wps-office wps-office-fonts

apt -y purge linuxqq

apt -y purge fonts-zh-cn-misc-atzlinux

apt -y purge atzlinux-store
apt -y purge atzlinux-archive-keyring

echo "开始卸载不需要使用的中文软件依赖包 ..."
apt -y autoremove
echo "卸载完成,谢谢使用《铜豌豆 Linux》！"
echo "欢迎您在有需要的时候，再次使用《铜豌豆 Linux》https://www.atzlinux.com"
