# debian-cn

#### 介绍
debian-cn 项目地址：

https://gitee.com/atzlinux/debian-cn/tree/apt-install/

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

8) 中文字体

<p>
<b>好消息：安装光盘镜像文件</b>，已经制作完成。重装操作系统的用户，可以直接用本项目的 iso 安装镜像文件，一次性安装好中文环境。
</p>
<h2>
<a href="http://118.24.9.73/debian/download/iso-release-2019-11-08.txt" >
具体请点击这里查看</a></h2>

#### 安装教程

## 一键安装脚本
在终端命令行，用 root 执行如下命令即可：

* 下载一键安装脚本

*`
wget http://118.24.9.73/debian/download/install-all-single-script.sh
`*

注：i386 32 位的机器，请下载：

*`
wget http://118.24.9.73/debian/download/i386/install-all-single-script.sh
`*

* 执行安装

*`
.  ./install-all-single-script.sh
`*

注：前面是英文的 点 空格 点，表示在当前路径执行该脚本。

#### 安装完成后，请退出当前登录的图像界面，再重新登录，让所有安装生效。

#### 更新升级

一键更新 debian-cn 项目所有软件包

*`
apt update
`*

*`
apt upgrade
`*

<a href="http://118.24.9.73/debian/download/changelog.txt" target="_blank">
项目更新日志</a>

#### 桌面截屏

安装完成后，各个软件在同一个屏幕展示的截屏如下：

<img src="https://gitee.com/atzlinux/debian-cn/raw/apt-install/img/jieping.png">

#### 联系方式

对本项目的任何意见和建议，欢迎用如下任一方式联系。

邮箱：atzlinux@yeah.net

微信：atzlinux

QQ：  909868357

访问：https://gitee.com/atzlinux/debian-cn  发表点评，报告问题，提交需求。

#### 免责声明
本项目基于开源软件和各个厂家的商业软件集成，对使用此项目的造成任何问题和损失，本人和本项目以及参与该项目的任何人，均不承担任何赔偿责任。
本项目基于 Debian ，但不属于 Debian 官方。本项目的任何问题，均与 Debian 官方项目无关。

#### 欢迎资助本项目
<img src="https://gitee.com/atzlinux/debian-cn/raw/apt-install/img/wechat-pay.png">
<img src="https://gitee.com/atzlinux/debian-cn/raw/apt-install/img/ali-pay.png">
