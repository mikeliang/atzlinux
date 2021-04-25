# add packages to txt suite

for f in atzlinux-all-txt-tech.packages
	do
		echo $f;
		wc -l $f
		N=`wc -l $f|awk {'print $1'}`
		echo $N
		IN=`expr $N - 1`

		sed -i "$IN r to-add" $f
		git diff $f
	done

cat to-add
wc -l to-add
