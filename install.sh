#!/bin/bash
cd `dirname $0`; pwd
echo "开始安装 Debian 中文套件 ..."

echo "开始安装 wine32 ..."
./install-wine32.sh

echo "开始安装 qq ..."
./install-qq.sh

echo "开始安装 ..."
echo " ..."
