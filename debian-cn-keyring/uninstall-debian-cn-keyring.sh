#!/bin/bash
cd `dirname $0`; pwd
echo '即将开始卸载 ...'
apt purge debian-cn-archive-keyring
apt purge atzlinux-archive-keyring
echo '卸载完成'
