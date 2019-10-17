echo '清理 debian-cn 软件包安装仓库'
apt-add-repository -r 'deb http://118.24.9.73/debian/ stable main non-free'
rm -fv /var/lib/apt/lists/*118.24.9.73*
apt update
