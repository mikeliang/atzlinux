echo '清理 debian-cn 软件包安装仓库'
apt-add-repository -r 'deb http://118.24.9.73/debian/ stable main non-free'
apt-add-repository -r 'deb http://debian-cn.lilishare.com/debian/ stable main non-free'
apt-add-repository -r 'deb https://apt.atzlinux.com/debian buster  main contrib non-free'
rm -fv /var/lib/apt/lists/*118.24.9.73*
rm -fv /var/lib/apt/lists/*debian-cn.lilishare.com*
rm -fv /var/lib/apt/lists/*apt.atzlinux.com*
apt update
