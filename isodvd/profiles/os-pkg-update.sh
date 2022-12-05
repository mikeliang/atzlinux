#! /bin/bash

for p in `cat os-regular-update.list firmware.pkg.list`
do
pooldir=`apt-cache showsrc $p|grep ^Directory:|awk {'print $2'}|tail -n 1`
echo $pooldir
mkdir -pv $pooldir
cd $pooldir
apt-get download $p
cd -
done
