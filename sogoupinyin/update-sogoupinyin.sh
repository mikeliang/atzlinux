apt -y install software-properties-common
apt-add-repository 'deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main'
apt update
apt -y install sogoupinyin
apt-add-repository -r 'deb http://archive.ubuntukylin.com:10006/ubuntukylin xenial main'

rm -fv /var/lib/apt/lists/*ubuntukylin* 
apt update
