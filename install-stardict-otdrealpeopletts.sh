#!/bin/bash
apt -y install wget
wget -c -O debian-cn-archive-keyring_2019.10.15_all.deb http://118.24.9.73/debian/pool/main/d/debian-cn-archive-keyring/debian-cn-archive-keyring_2019.10.15_all.deb
apt -y install ./debian-cn-archive-keyring_2019.10.15_all.deb 
apt -y install software-properties-common
apt-add-repository 'deb http://118.24.9.73/debian/ stable main non-free'
apt-add-repository 'deb http://118.24.9.73/debian/ unstable non-free'
apt-add-repository "deb https://mirrors.huaweicloud.com/debian/ unstable main"
apt update
apt -y install stardict-otdrealpeopletts
apt-add-repository -r "deb https://mirrors.huaweicloud.com/debian/ unstable main"
