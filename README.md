# 《铜豌豆 Linux》-- 中文 Linux 桌面操作系统
![《铜豌豆 Linux》图标](https://www.atzlinux.com/pics/logo/atzlinux-logo-2023.svg)

> https://www.atzlinux.com/

## 简介

《铜豌豆 Linux》 是一款基于 Debian 的 Linux 中文桌面操作系统。

Debian 是一款非常优秀的 Linux 操作系统，但由于版权限制等多方面的原因，默认安装缺少中文桌面用户常用的软件。
将一个原生 Debian 安装好后，再修改配置为中文用户可以使用的日常操作系统，就是对一个对 Debian 比较了解的技术人员来讲，也需要不少时间。

《铜豌豆 Linux》操作系统在 Debian 基础上，简化安装步骤，收集整理制作中文常用软件、一键安装脚本，搭建软件源，一次性安装完成常用中文应用，节省大家定制 Debian 的时间,做到“开箱即用”。

## iso 下载
> https://www.atzlinux.com/download-iso.htm

## 背景 & 初衷

原生 Debian 的安装，总体还是比较麻烦。由于 Debian 严格遵循源代码开放的自由协议，硬件厂家的闭源驱动固件 firmware，默认是不在 Debian 官方 iso 里面。

目前笔记本电脑一般默认集成有无线网卡，但这类无线网卡的驱动，在原生 Debian 的安装过程中，需要自己先确认无线网卡芯片型号，手工用 U 盘拷贝对应 firmware 文件，再加载。

Debian 原生的第一张 CD 安装 iso 文件，由于受到 iso 文件大小的限制，在安装的时候，即使安装界面选择中文，也没有安装中文字体，安装后第一次重启登录，中文显示是乱码，需要再手工用命令行安装中文字体才行。

Debian 的在安装过程中的可定制化程度比较高，有较多安装选项在安装过程中需要选择，对用户的技术知识水平也有一定的要求。

针对以上的这些问题，《铜豌豆 Linux》定制化安装 iso 文件，对安装过程进行了大量优化。

具体的优化措施有：
- 采用 preseed 等技术，默认设置安装过程中的很多配置选项，无需用户输入
- 默认使用中文安装界面、中文字符集
- 默认集成常见无线网卡 firmware，让内核能够直接识别并驱动
- 默认采用 DHCP 方式自动获取网络参数
- 支持 IPv6，默认对外使用随机主机地址，增加安全性
- 默认使用速度比较快的国内 Debian 官方镜像作为软件源和安全升级源
- 默认安装中文字体、搜狗输入法、wps 等常用中文应用
- 默认设置 root 账号密码
- 默认设置新用户及密码
- 默认识别多个硬盘的多个操作系统，并自动将 grub 安装在 sda 硬盘引导

在整个安装过程中，以尽量自动化和免交互输入为目标，只需要进行 WiFi 选择、WiFi 密码输入、硬盘分区 这三个步骤，就可以完成整个操作系统安装。

而且这三个步骤，只需要在安装初期前面几分钟的时候需要用户人为输入，在硬盘分区完成后，后续大部分的安装耗时，都是系统自动完成，不需要人为再干预，安装完成后，会自动重启进入登录界面。

如果是使用的 SSD 硬盘，一般只需要半个小时，可以完成全部安装，而且后续 20 多分钟，是不需要人一直在旁边盯着看的。

## 铜豌豆 Linux 软件源
https://www.atzlinux.com/allpackages.htm

为方便大家安装各类中文软件，搭建的《铜豌豆 Linux》软件源积极收集各类中文软件。
收录的软件包中，既有开源项目软件，也有各类商业软件，丰富 Linux 桌面中文应用。

对收录的 deb 软件包，会用 Debian 官方软件包质量检查工具 lintian 进行质量检查，安装卸载测试等工作。
确保收录的软件包，维持在相当的质量水平。

尊重软件包知识产权，软件包至少是可以个人免费使用，不收录破解版本。

软件包的收录规则：
https://www.atzlinux.com/allpackages.htm#pkgrules

软件源同时支持 Debian 系发行版。

### 收纳开源社区中文软件包

中国象棋、麻将 等中文开源软件，积极收集整理到铜豌豆软件源，并进行必要的调整、重新打包，共同打造 Linux 中文桌面生态。
目前铜豌豆软件源 https://www.atzlinux.com/allpackages.htm 收录的中文应用软件包约 90 个。（不包括 Debian 官方软件包和底层依赖相关软件包）
![屏幕截图](https://cdn.atzlinux.com/debian/img/jieping.png)
铜豌豆软件源的软件源，都可以在“铜豌豆应用商店”里面轻松安装。

### 自制中文字体等软件包
面对目前 Linux 桌面缺少中文字体的窘境，
iso 文件默认安装自制字体包，WPS 打开不报缺少字体错误。

项目组成员凡客积极贡献，收集整理若干开源或者免费商用的中文字体，制作打包。目前已经制作好的字体软件包有：

- 微软 cascadia 英文字体
- 鸿雷板书简体
- 江西拙楷
- 演示春风楷（毛笔楷体）
- 演示秋鸿楷（毛笔楷体）
- 演示夏行楷（毛笔楷体）
- 演示悠然小楷（毛笔楷体）
- 优设标题黑
- 杨任东竹石体
- 小赖手写体
- 一点明体
- 江城斜宋体、江城斜黑体
- 萌神拼音体（自带拼音）
- 黄令东齐伋体、黄令东齐伋复刻体
- 演示佛系体
- 悠哉手写体
- 更纱黑体（自带常规体、斜体）

#### 向 Debian 官方更新中文字体包 -- 霞鹜文楷
Debian 官方软件包里面中文字体比较少，铜豌豆项目和“霞鹜文楷”开源字体项目积极配合，将该字体贡献为 Debian 官方软件包。
https://tracker.debian.org/pkg/fonts-lxgw-wenkai

中文字体软件包还在持续制作增加中。

### 商业软件互动
对中文商业软件在适配测试过程中发现的问题，也积极和商业公司沟通，进行良性互动。得到了百度网盘、WPS
、永中 office 等公司的反馈。
在 linuxqq 反馈页面反馈的意见，在 linuxqq 新版本中，也得到了改进。

![用户桌面默认图标](https://cdn.atzlinux.com/pics/desktop-item.png)

## 反馈开源社区

铜豌豆项目本身是开源项目，所有代码在码云开源：
https://gitee.com/atzlinux/projects

并积极向 Debian 贡献，报告 bug，参与官方软件包维护。

Debian 官方 git 仓库 https://salsa.debian.org ，有提交合并请求，并被吸收。

推动 Debian 中文社区把 星际译王 软件，重新移植到 buster-backports

## 历程

铜豌豆 最开始在 2019 年 9 月在码云上创建了第一个仓库：
https://gitee.com/atzlinux/debian-cn
- 前期是用的一键安装脚本的方式，在已经安装好 Debian 操作系统的上一次性安装常用中文应用。
https://www.atzlinux.com/yjaz.htm

- 后来自己搭建了 apt 软件源，方便软件包下载。
https://www.atzlinux.com/allpackages.htm

- 定制化的 iso 文件第一版是在 2019 年 11 月初发布，目前已经经历了 9 次更新到 10.5.1 版本。

## 项目团队成员

项目发布后，先后有多位 Linux 爱好者参与项目，目前总计有 5 位铜豌豆开发者贡献了软件包，项目核心成员约 10 人。

非常欢迎更多的 Linux 爱好者加入，具体请访问：
https://www.atzlinux.com/devel.htm

## 困难
- 目前发现的中文软件，总体很少，大家有发现合适的软件，欢迎提交软件包新增需求：
https://gitee.com/atzlinux/debian-cn/issues/I13NQT

- 欢迎大家更多的反馈在使用铜豌豆过程中的问题，开源项目，大家反馈的问题都是非常有价值的，可以促进项目更好的改进。
大家可以在码云反馈：
https://gitee.com/atzlinux/debian-cn/issues 或者微信群反馈。

- 捐赠：https://www.atzlinux.com/juanzeng.htm

## 联系方式

目前项目有建立微信群和邮件列表，欢迎大家加入。
加入方式，请访问：https://www.atzlinux.com/contact.htm

<p>《铜豌豆 Linux》官网二维码<br>
<img src="https://www.atzlinux.com/pics/qr-atzlinux-com.svg" alt="《铜豌豆 Linux》官网二维码">
</p>
