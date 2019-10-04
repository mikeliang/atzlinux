#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载 ...'
apt purge -y \
udis86 \
deepin-fonts-wine \
deepin-libwine \
deepin-wine32 \
deepin-wine32-preloader \
deepin-wine \
deepin-wine-binfmt \
deepin-wine-plugin \
deepin-wine-plugin-virtual \
deepin-wine-helper \
deepin-wine-uninstaller \
deepin-wine 
echo '卸载完成'
