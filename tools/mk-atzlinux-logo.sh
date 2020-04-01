#!/bin/bash
# file: mk-atzlinux-logo.sh
# by Careone
APPNAME="mk-atzlinux-logo.sh"
APPVER="0.1-2020.0401"
prefix="$HOME/atzlinux/logo"

SUFFIX=png

logo="$prefix/atzlinux.$SUFFIX"

if [ ! -d "$prefix" ]; then
  mkdir -p "$prefix"
fi

## --------

cnfont="/usr/share/fonts/truetype/wqy/wqy-microhei.ttc"
#cnfont="/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc"

## color defines
DEBIAN_RED='#ff0000'
UBUNTU_YELLOW='#ffff00'
DEEPIN_BLUE='#0000ff'
MINT_GREEN='#00ff00'

BG_COLOR=white
BORDER_COLOR="$DEBIAN_RED"

declare -a str color stroke_color pointsize
str=( A T Z Linux ) 
color=( "$UBUNTU_YELLOW" "$MINT_GREEN" "$DEEPIN_BLUE" "$DEBIAN_RED" )
stroke_color=( "$UBUNTU_YELLOW" "$MINT_GREEN" "$DEEPIN_BLUE" "$DEBIAN_RED" )	#描边颜色，相当于使用粗体
pointsize=( 20 16 20 12 )

declare -i ID=1 LINEWIDTH WIDTH HEIGHT LOGO_SIZE
LOGO_SIZE=48

declare -a pic_size	#数组，用于检测并保存生成的临时图片的长、宽尺寸

### body ###

echo " make ATZLinux LOGO..."
cd "$prefix"
echo " path: `pwd`"

# step 1-4:
for a in `seq 0 1 3`; do
  echo " * $ID: make Pic ${str[a]}.$SUFFIX"
  convert -background "$BG_COLOR" -font "$cnfont" -pointsize "${pointsize[a]}" \
  -fill "${color[a]}" -stroke "${stroke_color[a]}" -strokewidth 1 \
  label:"${str[a]}" "${str[a]}.$SUFFIX" 
	
  let "ID += 1"

done

# step 5:
echo
echo " * $ID: merge strings A-T-Z ..."
  convert -background "$BG_COLOR" -gravity Center "${str[0]}.$SUFFIX" \
  "${str[1]}.$SUFFIX" "${str[2]}.$SUFFIX" \
  +append "ATZ.$SUFFIX"

  if [ -s "ATZ.$SUFFIX" ]; then
    identify "ATZ.$SUFFIX"
  fi
  let "ID += 1"

# step 6:
echo
echo " * $ID: merge and make LOGO..."
  convert -background "$BG_COLOR" -gravity Center \
  "ATZ.$SUFFIX" "${str[3]}.$SUFFIX" -append "$logo"

  if [ -s "$logo" ]; then
    identify "$logo"
  fi

  let "ID += 1"

## step 7: 添加外框, 默认线宽为2
LINEWIDTH=2

echo
pic_size=( `identify $logo | cut -d' ' -f3 | sed '/x/s// /'` )
echo " ${pic_size[*]}"
let "WIDTH = pic_size[0] + LINEWIDTH * 2"
let "HEIGHT = pic_size[1] + LINEWIDTH * 2"

#
echo " LOGO size: ${WIDTH}x${HEIGHT}"
#* 37 加边框: 在一张照片的四周加上边框，可以用 -mattecolor 参数，
#  比如某位同志牺牲了，我们需要为他做一张黑边框的遗像，可以这样：
#convert -mattecolor "#000000" -frame 60x60 yourname.jpg rememberyou.png
#  其中，"#000000"是边框的颜色，边框的大小为60x60 
#
#* 38 也可以这样加边框:
#convert -border 60x60 -bordercolor "#000000" yourname.jpg rememberyou.png

# step 8: 先添加一圈白边
  convert -extent "${WIDTH}x${HEIGHT}" -gravity Center -background \
  "$BG_COLOR" $logo "atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"

# step 9: 再添加一圈红边
old_logo="atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"
let "WIDTH = WIDTH + LINEWIDTH * 2"
let "HEIGHT = HEIGHT + LINEWIDTH * 2"
  
  convert -extent "${WIDTH}x${HEIGHT}" -gravity Center -background \
  "$BORDER_COLOR" $old_logo "atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"
echo

# step 10: 调整为图标（即：长=宽，周围添加透明背景）
old_logo="atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"

if [ "$WIDTH" -ge "$HEIGHT" ]; then
  HEIGHT="$WIDTH"
else WIDTH="$HEIGHT" 
fi

# step 11: 强制扩展小图标的尺寸，如扩展为 48x48 像素:
if [ "$WIDTH" -lt "$LOGO_SIZE" ]; then
  echo " * 强制把小图标的尺寸，扩展为 ${LOGO_SIZE}x${LOGO_SIZE} 像素..."
  WIDTH=$LOGO_SIZE 
  HEIGHT=$LOGO_SIZE
fi

  convert -extent "${WIDTH}x${HEIGHT}" -gravity Center -background \
  none $old_logo "atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"
echo

echo " Done."

# step 11: show pic
logo="atzlinux_${WIDTH}x${HEIGHT}.$SUFFIX"

echo " show picture: $logo"
sleep 1
  if [ -s "$logo" ]; then
    identify "$logo"
    sleep 1
    xdg-open "$prefix/" &
    sleep 1 
    xdg-open  "$logo" &
  fi

cd - &>/dev/null

exit 0;