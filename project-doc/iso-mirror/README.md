# 本目录文档记录铜豌豆 iso 镜像网站信息：

## iso 镜像机器网址、城市、运营商信息
- https://www.atzlinux.com/atzlinux-cd/iso-site-cityisp.txt

## 当前最新版本 iso 路径信息
- https://www.atzlinux.com/atzlinux-cd/iso.list.txt

以上两个文件，是作为 iso 镜像网站 基础信息数据，用于搭建新的镜像站点，生成下载网页，设置监控等。

## 机器捐赠信息
- https://www.atzlinux.com/juanzeng.htm#iso-node

  该页面实际是调用如下网页展示：

- https://www.atzlinux.com/atzlinux-cd/iso-site-info.htm

## 生成 iso 下载网页的脚本
- https://www.atzlinux.com/atzlinux-cd/get-iso-html.sh

  每次更新镜像网站信息，iso 文件信息，均需重新运行该脚本，生成 iso 下载网页：

- iso-10.13.1amd64.htm

- iso-11.5.1amd64.htm

- iso-11.5.2arm64.htm

以上网页的内容，会被下载页面自动包含展示：

https://www.atzlinux.com/download-iso.htm

##  iso 下载可用性情况监控

### Grafana 监控
https://motion.atzlinux.com:3000/d/Sj56fJUnz/atzlinux-isoxia-zai-dian-jian-kong-mian-ban?orgId=1&refresh=30s&from=now-3h&to=now

### 脚本监控
监控脚本在 铜豌豆码云 www 仓库维护：
- https://gitee.com/atzlinux/www/blob/master/atzlinux-cd/check-iso.sh

  脚本需部署在网站 /atzlinux-cd/ 目录下， 和两个 iso 镜像网站 基础信息文件 iso.list.txt iso-site-cityisp.txt 放置同一个目录。

脚本会将检测结果放入文件：
- check-iso-error.txt 最近一次检测异常情况

平时只需要查看该文件，即可知道最近是否出现异常，如果该文件为空，则表示正常。

- check-iso-error-history.txt 历史所有检测异常情况

目前在成都腾讯云机器（铜豌豆 www 主网站）、新加坡华为云节点机器部署该监控。

1.成都腾讯云
- https://www.atzlinux.com/atzlinux-cd/check-iso-error.txt
- https://www.atzlinux.com/atzlinux-cd/check-iso-error-history.txt

crontab：

*/13 * * * * cd /home/atzlinux/html/atzlinux-cd/; ./check-iso.sh

2.新加坡华为云

- http://xjphwy.atzlinux.com/atzlinux-cd/check-iso-error.txt
- http://xjphwy.atzlinux.com/atzlinux-cd/check-iso-error-history.txt

crontab：

*/9 * * * * cd /home/atzlinux/html/atzlinux-cd/; ./check-iso.sh

## iso 镜像网站搭建
使用任一 web 服务端软件启动 web 服务，使用任一端口启动 web 服务均可。
在网站根目录下 创建 atzlinux-cd 子目录用于放置 iso 相关文件。

#### http 网站
以使用 Nginx 为例说明：

- 安装 Nginx
  `apt install nginx`

- 安装目录索引模块
  `apt install libnginx-mod-http-fancyindex`

- 配置文件

  - Nginx 配置文件路径为：
    - /etc/nginx/sites-available
    - /etc/nginx/sites-enabled

    该目录下有到 /etc/nginx/sites-available 配置文件的符号链接，表示启用该配置文件

  - 配置文件修改

    - 监听端口
    - 主机名 server_name _;
    - 网站根目录路径
    - 给 atzlinux-cd 目录增加目录索引

铜豌豆主机可以跟机器现有 Nginx 共用同一个 web 端口，通过主机名区分。
本目录下的 atzlinux-cd 配置文件可以作为参考，请参考最下面 80 端口部分。

#### https 和 网站证书
提供 iso 文件下载，可以不使用 https 功能，只需要 http 即可。
对需要使用 https 的，可以使用网站域名自己的证书，也可以增加一个铜豌豆 atzlinux.com 的子域名，使用铜豌豆子域名的证书。

本目录下的 atzlinux-cd 配置文件可以作为参考。
一个机器可以同时提供 http 和 https 服务。

## iso 镜像网站同步
todo
