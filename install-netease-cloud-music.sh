#!/bin/bash
cd netease-cloud-music
cd `dirname $0`; pwd
echo '即将开始安装 ...'
wget -c -O netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb http://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb

apt -y install ./netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb

cd ..
