SUMHOST="https://www.atzlinux.com/"

for i in `cat iso.list`
do
       DIRNAME=`dirname $i`
#       echo $DIRNAME
       ISONAME=`basename $i`
       echo $ISONAME
#       mkdir -vp $DIRNAME
echo $SUMHOST$DIRNAME/MD5SUMS
#       curl -I $SUMHOST$DIRNAME/MD5SUMS
       wget   $SUMHOST$DIRNAME/MD5SUMS  -O  $DIRNAME/MD5SUMS -q
#       ls -l $DIRNAME/MD5SUMS
       cd $DIRNAME/; md5sum -c MD5SUMS;cd -
       echo
done
