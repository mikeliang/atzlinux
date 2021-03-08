# add one package to all suite

p=`head -n 1 to-add`
for f in atzlinux-*.packages
	do echo $f;
		echo $p
		sed -i "/dists-buster-files-atzlinux/ i\
		$p" $f
	done
git diff ./atzlinux-*.packages
