#!/bin/sh

#   Copyright (C) 2016 Deepin, Inc.
#
#   Author:     Li LongYu <lilongyu@linuxdeepin.com>
#               Peng Hao <penghao@linuxdeepin.com>

BOTTLENAME="Deepin-QQ"
APPVER="8.9.19983deepin23"

xfsettingsd --display :0.0 &

/opt/deepinwine/tools/run.sh $BOTTLENAME $APPVER "$1" "$2" "$3"
