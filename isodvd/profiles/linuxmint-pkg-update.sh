#! /bin/bash

for p in `cat linuxmint.pkg.list`
do
pooldir=`apt-cache showsrc $p|grep ^Directory:|awk {'print $2'}|tail -n 1`
echo $pooldir
mkdir -pv $pooldir
cd $pooldir
apt-get download $p
apt-get -o Dir::Cache::Archives=/home/atzlinux/a11test/atzlinux/$pooldir autoclean
cd -
done

# clear lock file from apt-get autoclean
find ./ -name "lock" -exec rm -fv {} \;
