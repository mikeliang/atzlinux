echo '增加 debian-cn 软件包安装仓库'
apt -y install software-properties-common
apt-add-repository 'deb http://118.24.9.73/debian/ stable main non-free'
dpkg --add-architecture i386
apt update
