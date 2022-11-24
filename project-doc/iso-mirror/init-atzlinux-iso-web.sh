FROMHOST=""
FROMHOST="http://hncsdxwq.atzlinux.com:1880/"

for i in `cat iso.list`
do
       DIRNAME=`dirname $i`
       echo $DIRNAME
       ISONAME=`basename $i`
       echo $ISONAME
       mkdir -vp $DIRNAME
       curl -I $FROMHOST$i
       wget  $FROMHOST$i -o $DIRNAME.log -O  $DIRNAME/$ISONAME
done
