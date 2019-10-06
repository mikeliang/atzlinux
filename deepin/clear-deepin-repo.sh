echo '清理 deepin 软件包安装仓库'
apt-add-repository -r 'deb http://mirrors.huaweicloud.com/deepin stable main non-free contrib'
rm -fv /var/lib/apt/lists/*deepin*
apt update
