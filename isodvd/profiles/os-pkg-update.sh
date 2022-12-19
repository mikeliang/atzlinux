#! /bin/bash

for p in `cat os-regular-update.list firmware.pkg.list`
do
pooldir=`apt-cache showsrc $p|grep ^Directory:|awk {'print $2'}|head -n 1`
echo $pooldir
mkdir -pv $pooldir
cd $pooldir
apt-get download $p
apt-get -o Dir::Cache::Archives=/home/atzlinux/a11test/atzlinux/$pooldir autoclean
cd -
done
