#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载 ...'
apt -y purge wps-office-fonts wps-office
echo '卸载完成'
