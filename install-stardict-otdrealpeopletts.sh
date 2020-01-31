#!/bin/bash
apt -y install wget
wget -c -O atzlinux-archive-keyring_lastest_all.deb https://www.atzlinux.com/debian/pool/main/a/atzlinux-archive-keyring/atzlinux-archive-keyring_lastest_all.deb
apt -y install ./atzlinux-archive-keyring_lastest_all.deb
dpkg --add-architecture i386
apt update
apt -y install sudo
apt -y install stardict-otdrealpeopletts
