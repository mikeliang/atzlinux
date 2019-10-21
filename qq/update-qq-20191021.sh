#!/bin/bash
apt update
apt -y install xsettingsd
apt -y install libcanberra-gtk-module
apt -y install libcanberra-gtk-module:i386
sed -i '11 i\xfsettingsd --display :0.0 & \n' /opt/deepinwine/apps/Deepin-QQ/run.sh
