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

## 一键安装脚本
在终端命令行，用 root 执行如下命令即可：

wget https://gitee.com/atzlinux/debian-cn/blob/apt-install/install-all-single-script.sh

. ./install-all-single-script.sh

#### 安装完成后，请退出当前登录的图像界面，再重新登录，让所有安装生效。

#### 更新升级

一键更新 debian-cn 项目所有软件包

apt update

apt upgrade

#### 问题排查
1.安装时出现依赖性报错

请检查您 Debian 系统原有的安装源仓库设置是否完整。
我本人的安装源文件： /etc/apt/sources.list 包含有如下这行：

deb http://mirrors.163.com/debian buster main non-free contrib

设置好安装源后，运行  apt update 更新安装源软件列表，再重新执行本项目的安装脚本。

如果还有依赖性问题，请联系我反馈，联系方式见本文最后。

#### 联系方式

对本项目的任何意见和建议，欢迎用如下任一方式联系。

邮箱：atzlinux@yeah.net
微信：atzlinux
QQ：  909868357

访问：https://gitee.com/atzlinux/debian-cn  发表点评，报告问题，提交需求。

#### 免责声明
本项目基于开源软件和各个厂家的商业软件集成，对使用此项目的造成任何问题和损失，本人和本项目以及参与该项目的任何人，均不承担任何赔偿责任。

