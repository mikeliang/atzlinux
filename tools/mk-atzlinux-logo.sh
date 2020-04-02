#!/bin/bash
# file: mk-atzlinux-logo.sh
# by Careone
APPNAME="mk-atzlinux-logo.sh"
APPVER="0.2-2020.0402"

##
DEBUG=1

##
prefix="$HOME/atzlinux/logo"

#
SUFFIX=png

logo="$prefix/atzlinux.$SUFFIX"

if [ ! -d "$prefix" ]; then
  mkdir -p "$prefix"
fi

## tag 1: custom font
# ----------------------------
cnfont=
# default: font5

font1="/usr/share/fonts/truetype/wqy/wqy-zenhei.ttc"
font2="/usr/share/fonts/truetype/wqy/wqy-microhei.ttc"

font3=/usr/share/fonts/truetype/alibaba/Alibaba-PuHuiTi-Bold.ttf
font4=/usr/share/fonts/truetype/alibaba/Alibaba-PuHuiTi-Regular.ttf

font5=/usr/share/fonts/truetype/noto/NotoMono-Regular.ttf 

# -------


#
if [ "$#" = 0 ];then
	if [ -s "$font3" ]; then
  		cnfont=$font3
	elif [ -s "$font1" ]; then
	  cnfont=$font1
	else cnfont=$font2   
	fi
else 
  cnfont=$font5	
fi
# ----------------------------


## color defines
DEBIAN_RED='#9e2031'
UBUNTU_YELLOW='#f44800'
DEEPIN_BLUE='#0e64be'
MINT_GREEN='#ade675'

BG_COLOR=white
BORDER_COLOR="$DEBIAN_RED"

declare -a str color stroke_color pointsize
str=( A T Z Linux ) 

## tag 2: custom font size
# ----------------------------
color=( "$UBUNTU_YELLOW" "$MINT_GREEN" "$DEEPIN_BLUE" "$DEBIAN_RED" )
stroke_color=( "$DEBIAN_RED" "$UBUNTU_YELLOW" "$DEBIAN_RED" "$DEBIAN_RED" )	#描边颜色，相当于使用粗体

#pointsize=( 20 16 20 12 )	# for 48x48
#pointsize=( 20 16 20 14 )	# for 64x64
pointsize=( 40 32 40 24 )	# for 96x96, default
# pointsize=( 50 40 50 36 )	# for 128x128
# ----------------------------

declare -i ID=1
declare -i LINEWIDTH STROKEWIDTH WIDTH HEIGHT 
declare -a width height
LINEWIDTH=2
STROKEWIDTH=1

declare -a pic_size	#数组，用于检测并保存生成的临时图片的长、宽尺寸

# function 1.
	_usage_cn () {
cat<<EOF
用法:  $APPNAME [option]    

选项:

  -f1, --font1       
   设置文字使用的字体。等同于指定字体变量 cnfont 的值为 font1
   说明: 可以使用选项 -f1 ... -f5, 指定 font1 - font5 的任意一种字体

  -s0, --strokewidth-0        设置文字描边的宽度为0 (即不描边) 
  -s1, --strokewidth-1      * 默认方案。设置文字描边的宽度为1 个像素

  -48, -64, -96, -128
   根据图片实际尺寸，自动扩展图片为 48x48, 64x64, 96x96, 128x128 这四种标准
   图标尺寸 (周围填充透明背景色)。如果图片尺寸大于 128x128, 则不做调整
   默认为 64x64 
  -v, --version    显示版本信息并退出
  -h, --help       显示帮助信息并退出

Homepage: 
 https://gitee.com/atzlinux/
EOF
}

### defines end ### 

### body ###

for option in "$@"; do

    	case "$option" in

    	 -h | --help)
	   _usage_cn
	   exit 0 ;;

    	 -f1 | --font1)
	   cnfont="$font1"
	   shift ;;

    	 -f2 | --font2)
	   cnfont="$font2"
	   shift ;;

    	 -f3 | --font3)
	   cnfont="$font3"
	   shift ;;

    	 -f4 | --font4)
	   cnfont="$font4"
	   shift ;;

    	 -f5 | --font5)
	   cnfont="$font5"
	   shift ;;

#
# pointsize=( 20 16 20 12 )	# for 48x48
# pointsize=( 20 16 20 14 )	# for 64x64
# pointsize=( 40 32 40 24 )	# for 96x96

   	 -48 | -48x48)
	   pointsize=( 20 16 20 12 )
	   shift ;;

   	 -64 | -64x64)
	   pointsize=( 20 16 20 14 )	
	   shift ;;

   	 -96 | -96x96) LINEWIDTH=3
	   pointsize=( 40 32 40 24 )	
	   shift ;;

   	 -128 | -128x128) LINEWIDTH=3
	   pointsize=( 50 40 50 36 )	
	   shift ;;
#
    	 -s1 | --strokewidth-1)
	   STROKEWIDTH=1
	   shift ;;

    	 -s0 | --strokewidth-0)
	   STROKEWIDTH=0
	   shift ;;

    	 -s1 | --strokewidth-1)
	   STROKEWIDTH=1
	   shift ;;

    	-v | --version)
	  echo "  $APPNAME $APPVER"
	  exit 0 ;;

    	-*)
	  echo "Unrecognized option \`$option'" 1>&2
	  exit 1 ;;	
	esac
	
done

#
echo " $APPNAME $APPVER"
echo " make ATZLinux LOGO..."

#
if [ "$DEBUG" = 1 ]; then
  echo "   ------------------- "
  echo "   prefix: $prefix"
  echo "   cnfont: $cnfont"
  echo "   SUFFIX: $SUFFIX"  
  echo "   str[*]: ${str[*]}"
  echo "   color[*]: ${color[*]}"
  echo "   stroke_color[*]: ${stroke_color[*]}"
  echo "   pointsize[*]: ${pointsize[*]}"
  echo "   LINEWIDTH: $LINEWIDTH"
  echo "   ------------------- "

fi

# 如果指定的字体本身就是 BOLD 粗体，则描边宽度 (STROKEWIDTH) 设为 0 即可
#  case "$cnfont" in
#    *[bB][oO][lL][dD].*) STROKEWIDTH=0 ;;
#    *) STROKEWIDTH=1 ;;
#  esac

# 如果想要生成很大尺寸的图片，可以强制指定描边宽度, 或者强制不描边
#STROKEWIDTH=0

cd "$prefix"
sleep 1

echo " path: `pwd`"

# step 1-4:
for a in `seq 0 1 3`; do
  echo " * $ID: make Pic ${str[a]}.$SUFFIX"
  convert -background "$BG_COLOR" -font "$cnfont" -pointsize "${pointsize[a]}" \
  -fill "${color[a]}" -stroke "${stroke_color[a]}" -strokewidth $STROKEWIDTH \
  label:"${str[a]}" "${str[a]}.$SUFFIX" 
	
  let "ID += 1"

done

# step 5:
echo
echo " * $ID: merge strings A-T-Z ..."
  convert -background "$BG_COLOR" -gravity West "${str[0]}.$SUFFIX" \
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

echo
pic_size=( `identify $logo | cut -d' ' -f3 | sed '/x/s// /'` )

#
if [ "$DEBUG" = 1 ]; then
  echo " pic_size: ${pic_size[*]}"
fi

let "width[0] = pic_size[0] + LINEWIDTH * 2"
let "height[0] = pic_size[1] + LINEWIDTH * 2"

let "width[1] = pic_size[0] + LINEWIDTH * 4"
let "height[1] = pic_size[1] + LINEWIDTH * 4"

if [ "${width[1]}" -ge "${height[1]}" ]; then
  width[2]="${width[1]}"; height[2]="${width[2]}";  
else width[2]="${height[1]}"; height[2]="${width[2]}";
fi

#

#* 37 加边框: 在一张照片的四周加上边框，可以用 -mattecolor 参数，
#  比如某位同志牺牲了，我们需要为他做一张黑边框的遗像，可以这样：
#convert -mattecolor "#000000" -frame 60x60 yourname.jpg rememberyou.png
#  其中，"#000000"是边框的颜色，边框的大小为60x60 
#
#* 38 也可以这样加边框:
#convert -border 60x60 -bordercolor "#000000" yourname.jpg rememberyou.png

# step 8: 先添加一圈白边
# step 9: 再添加一圈红边
# step 10: 调整为图标（即：长=宽，周围添加透明背景）
# step 11: 强制扩展小图标的尺寸，如扩展为 48x48 像素:

  if [ "${width[2]}" -eq 48 ] || [ "${width[2]}" -eq 64 ] || [ "${width[2]}" -eq 96 ] || [ "${width[2]}" -eq 128 ]; then
    FORCE_RESIZE=0
  elif [ "${width[2]}" -lt 48 ]; then
    FORCE_RESIZE=1
    width[2]=48 
    height[2]=48
  elif [ "${width[2]}" -gt 48 ] &&  [ "${width[2]}" -lt 64 ]; then
    FORCE_RESIZE=1
    width[2]=64
    height[2]=64
  elif [ "${width[2]}" -gt 64 ] &&  [ "${width[2]}" -lt 96 ]; then
    FORCE_RESIZE=1
    width[2]=96
    height[2]=96
  elif [ "${width[2]}" -gt 96 ] &&  [ "${width[2]}" -lt 128 ]; then
    FORCE_RESIZE=1
    width[2]=128
    height[2]=128
  else # 如果图标尺寸大于 64, 则不调整图标尺寸 
    FORCE_RESIZE=0 
  fi
  	
if [ "$FORCE_RESIZE" = 1 ]; then
  echo " * 强制把小图标的尺寸，扩展为 ${width[2]}x${height[2]} 像素..."
fi

echo " LOGO size: ${width[2]}x${height[2]}"

  convert -gravity Center \
   -background $BG_COLOR -extent "${width[0]}x${height[0]}" \
   -background $BORDER_COLOR -extent "${width[1]}x${height[1]}" \
   -background none -extent "${width[2]}x${height[2]}" \
   $logo "atzlinux_${width[2]}x${height[2]}.$SUFFIX"
echo

echo " Done."

# step 11: show pic
logo="atzlinux_${width[2]}x${height[2]}.$SUFFIX"

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
