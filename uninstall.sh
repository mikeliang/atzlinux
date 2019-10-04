#!/bin/bash
cd `dirname $0`; pwd
echo "开始卸载 Debian 中文套件 ... ：-（..."

echo "开始卸载  qq ..."
./qq/uninstall-qq.sh


echo "开始卸载  wine32 ..."
./deepin-wine32/uninstall-wine32.sh

echo "开始卸载 ..."
echo " ..."
