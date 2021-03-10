# add packages to all suite

for f in atzlinux-*.packages
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
