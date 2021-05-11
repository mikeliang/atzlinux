# add packages to all X + txt suite

for f in atzlinux-all-txt-tech.packages atzlinux-amd64-xfce.packages atzlinux-amd64-xall.packages atzlinux-amd64-kde.packages
	do
		echo $f;
		wc -l $f
		N=`wc -l $f|awk {'print $1'}`
		echo $N
		IN=`expr $N - 1`

		sed -i "$IN r to-add" $f
	done

cat to-add
wc -l to-add
