echo '增加铜豌豆软件包安装源 ...'
apt -y install software-properties-common
apt-add-repository 'deb https://apt.atzlinux.com/debian buster  main contrib non-free'
dpkg --add-architecture i386
apt update
