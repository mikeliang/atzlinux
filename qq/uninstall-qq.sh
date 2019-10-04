#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载Debian QQ ...'
apt -y purge deepin.com.qq.im:i386
echo '卸载完成'
