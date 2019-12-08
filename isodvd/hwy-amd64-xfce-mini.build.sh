build-simple-cdd --debug --dvd --proposed-updates --dist buster --locale zh_CN --keyboard us  \
--security-mirror \
http://mirrors.huaweicloud.com/debian-security/ \
--debian-mirror \
http://mirrors.huaweicloud.com/debian/  \
--backports-mirror \
http://mirrors.huaweicloud.com/debian \
-b amd64-xfce-mini.build \
-a debian-cn-amd64-xfce-mini
