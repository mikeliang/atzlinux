# debian-cn

#### 介绍
debian-cn 项目地址：

https://gitee.com/atzlinux/debian-cn

Debian 是一款非常优秀的 Linux 操作系统，但默认安装缺少中国人常用的软件。
本项目的目的是收集这些常用软件，利用自动化脚本在 Debian 上一键安装，节省大家定制 Debian 的时间。

#### 支持硬件平台
本项目支持 32 位和 64 位操作系统

32 位操作系统请访问：

https://gitee.com/atzlinux/debian-cn/tree/install-32bit/

64 位操作系统请继续往下阅读。

#### 软件架构
目前以 Debian 10.1 为基础，使用 Debian 的软件包管理工具 apt、dpkg 安装各类软件。

目前收录的应用软件如下：

1) QQ：
在 deepin wine32 上运行的版本

架构层次关系如下：
Debian 10.1 64位操作系统 ---> deepin wine32 32位的 wine 虚拟机  --->  QQ 程序

注：在 64 位 Debian 10.1 操作系统上安装 32位 的 wine 虚拟机，需要下载 180 多个 i386 包。

2) 微信

3) 百度网盘

4) 搜狗输入法

5) 网易云音乐

6) 有道词典

7) WPS

#### 安装教程

#### (一)下载安装文件

有如下几种方式下载安装文件，请根据自身情况选择一种下载：

##### 1.用 git

git clone https://gitee.com/atzlinux/debian-cn.git

##### 2.从码云下载安装包

需用用浏览器打开如下网址，并在码云注册登录。

https://gitee.com/atzlinux/debian-cn/repository/archive/master.zip

下载完成后，在终端用命令行解压缩。

unzip master.zip

##### 3.下载安装大包
该安装包目前放在 CDN 和百度网盘上，有 760 多 M，Debian 操作系统自身不包含的软件包，全部已经集成在该安装大包里。
使用此种方式，可以减少在安装过程中，从网上下载软件的时间。

##### 3.1 从 CDN 下载安装大包文件

下载方法：
在终端命令行依次执行：

wget http://debian-cn.lilishare.com/debian-cn.tar.gz

wget http://debian-cn.lilishare.com/MD5SUM.txt

注：该 CDN 下载方式，是用的云平台每个月 50G 的免费流量，先到先得。
如果提示文件无法下载，则是免费流量用完了，麻烦用其它方法下载。

##### 3.2 从百度网盘下载安装大包文件

安装大包文件文件：

链接: https://pan.baidu.com/s/1qSCX17vZRZrB6R7-tHaBtQ  密码: j1vr

安装大包文件校验和文件：

链接: https://pan.baidu.com/s/1JWYi783borl-5zjAwvAy6g  密码: d7bk

注：请将这两个文件，放到同一个目录下。

##### 3.3 安装大包完整性检查和解压缩

下载完成后，在终端用命令行先检查下载完整性。

md5sum -c MD5SUM.txt

显示 成功 OK ，则说明下载正确。
如果显示 失败，也可以先继续尝试后续步骤，看是否有报错。如果后续步骤有报错中断，再来重新下载吧。
由于软件包比较大，下载过程中个别错误，不一定会影响安装。

下载完成后，在终端用命令行解压缩。

tar zxvf debian-cn.tar.gz

#### (二)执行安装脚本

安装脚本需要在命令行下，用 root 账号执行。

su - root

cd debian-cn

1. ./install.sh  一键安装本项目集成的所有中文软件
2. ./install-xxx.sh 安装某个具体的中文软件

注：因为 QQ 依赖 wine32，所以安装 QQ 时，请先安装 wine32，再安装 QQ。 
安装 QQ，则依次执行如下两个脚本：

./install-wine32.sh

./install-qq.sh

其它软件的安装，执行各自名称的 ./install-xxx.sh 的脚本即可。xxx 替换为中文软件的字母名称。

（三）安装完成后，请退出当前登录的图像界面，再重新登录，让所有安装生效。

#### 更新升级

* QQ 升级

./qq/update-qq.sh

* 搜狗拼音升级

./sogoupinyin/update-sogoupinyin.sh

* 其余各软件升级

在软件名称子目录下，有一个 download.url.txt 文件，里面与记录各软件的下载页面地址。
可以访问该页面下载最新版本安装。

#### 卸载说明

1. ./uninstall.sh 一键卸载本项目安装的所有中文软件
2. ./xxx/uninstall-xxx.sh 各个子目录下，卸载该目录软件

注：wine32 是 QQ 运行的基础软件，卸载 wine32 会导致 QQ 也会被卸载。

#### 使用说明
搜狗拼音输入法安装完成后，需要退出当前登录的图像界面，再重新登录，才能够让搜狗输入法生效。

#### 问题排查
1.下载完整性检查

执行
md5sum -c MD5SUM.txt 
或者
sha256sum -c SHA256SUM.txt
命令，看输出是否显示都成功，对显示不成功的软件包，请重新执行该软件的安装脚本。
该项目的所有安装脚本和卸载脚本都可以重复执行，没有其它影响。

2.安装时出现依赖性报错

请检查您 Debian 系统原有的安装源仓库设置是否完整。
我本人的安装源文件： /etc/apt/sources.list 包含有如下这行：

deb http://mirrors.163.com/debian buster main non-free contrib

设置好安装源后，运行  apt update 更新安装源软件列表，再重新执行本项目的安装脚本。

如果还有依赖性问题，请联系我反馈，联系方式见本文最后。

#### 兼容性说明

Debian 下有多个图像界面系统，本项目默认在 Xfce 下完成兼容性测试。
在 Debian 的其它桌面环境下，如何 gnome、KDE 等，也应该能够正常运行，欢迎大家测试并反馈。

### 警告
本项目是在 64 位的 Debian 10.1 下安装测试，期间需要大量 32 位的 i386 deb 软件包，如果你是在 32 位的 Debian 运行本项目的安装脚本，
请务必小心，不建议新手安装。

#### 参与贡献

1. Fork 本仓库
2. 新建 Feat_xxx 分支
3. 提交代码
4. 新建 Pull Request

#### 联系方式

对本项目的任何意见和建议，欢迎用如下任一方式联系。

邮箱：atzlinux@yeah.net
微信：atzlinux
QQ：  909868357

访问：https://gitee.com/atzlinux/debian-cn  发表点评，报告问题，提交需求。

#### 免责声明
本项目基于开源软件和各个厂家的商业软件集成，对使用此项目的造成任何问题和损失，本人和本项目以及参与该项目的任何人，均不承担任何赔偿责任。

