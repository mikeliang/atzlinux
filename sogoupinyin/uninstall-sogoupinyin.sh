#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载 ...'
apt -y purge sogoupinyin
echo '卸载完成'
