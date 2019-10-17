# debian-cn

#### 介绍
debian-cn 项目地址：

https://gitee.com/atzlinux/debian-cn

Debian 是一款非常优秀的 Linux 操作系统，但默认安装缺少中国人常用的软件。
本项目的目的是收集这些常用软件，利用自动化脚本在 Debian 上一键安装，节省大家定制 Debian 的时间。

#### 应用软件

目前收录的应用软件如下：

1) QQ：

2) 微信

3) 百度网盘

4) 搜狗输入法

5) 网易云音乐

6) 有道词典

7) WPS

#### 安装教程

#### (一)下载安装文件

##### 1.用终端命令行从码云下载安装包

wget https://gitee.com/atzlinux/debian-cn/repository/archive/apt-install.zip

unzip apt-install.zip 

cd debian-cn

##### 2.用浏览器从码云下载安装包

需用用浏览器打开如下网址，并在码云注册登录。

https://gitee.com/atzlinux/debian-cn/repository/archive/apt-install.zip

下载完成后，在终端用命令行解压缩。

unzip atzlinux-debian-cn-apt-install.zip

cd debian-cn

#### (二)执行安装脚本

安装脚本需要用命令行，在 debian-cn 目录下，用 root 账号执行。

su root

1. ./install.sh  一键安装本项目集成的所有中文软件

2. ./install-xxx.sh 安装某个具体的中文软件

#### （三）安装完成后，请退出当前登录的图像界面，再重新登录，让所有安装生效。

#### 更新升级

一键更新 debian-cn 项目所有软件包

apt update

apt upgrade

#### 卸载说明

1. ./uninstall.sh 一键卸载本项目安装的所有中文软件
2. ./xxx/uninstall-xxx.sh 各个子目录下，卸载该目录软件

#### 使用说明
搜狗拼音输入法安装完成后，需要退出当前登录的图像界面，再重新登录，才能够让搜狗输入法生效。

#### 问题排查
1.安装时出现依赖性报错

请检查您 Debian 系统原有的安装源仓库设置是否完整。
我本人的安装源文件： /etc/apt/sources.list 包含有如下这行：

deb http://mirrors.163.com/debian buster main non-free contrib

设置好安装源后，运行  apt update 更新安装源软件列表，再重新执行本项目的安装脚本。

如果还有依赖性问题，请联系我反馈，联系方式见本文最后。

#### 兼容性说明

Debian 下有多个图像界面系统，本项目默认在 Xfce 下完成兼容性测试。
在 Debian 的其它桌面环境下，如何 gnome、KDE 等，也能够正常运行，欢迎大家测试并反馈。

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

