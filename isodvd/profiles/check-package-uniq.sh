#! /bin/bash

for f in atzlinux-*.packages
	do
		echo $f;
		wc -l $f
		N=`wc -l $f|awk {'print $1'}`
		echo $N
sort $f|uniq|grep -v ^$|wc -l
sort $f|grep -v ^$|uniq -c|grep -v 1
	done
