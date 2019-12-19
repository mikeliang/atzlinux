echo '增加 debian-cn 软件包安装仓库'
apt -y install software-properties-common
apt-add-repository -r 'deb http://debian-cn.lilishare.com/debian/ stable main non-free'
apt-add-repository 'deb https://apt.atzlinux.com/debian buster  main contrib non-free'
dpkg --add-architecture i386
apt update
