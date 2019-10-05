#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载 ...'
apt -y purge electronic-wechat
echo '卸载完成'
