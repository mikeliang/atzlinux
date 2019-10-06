echo '增加 deepin 软件包安装仓库'
apt -y install software-properties-common
apt-add-repository 'deb http://mirrors.huaweicloud.com/deepin stable main non-free contrib'
dpkg --add-architecture i386
apt update
