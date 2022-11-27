# 本目录文档记录铜豌豆 iso 镜像网站信息：

## iso 镜像机器网址、城市、运营商信息
- https://www.atzlinux.com/atzlinux-cd/iso-site-cityisp.txt

## 当前最新版本 iso 路径信息
- https://www.atzlinux.com/atzlinux-cd/iso.list

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
脚本需部署在网站 /atzlinux-cd/ 目录下， 和两个 iso 镜像网站 基础信息文件 iso.list iso-site-cityisp.txt 放置同一个目录。

脚本会将检测结果放入文件：
- check-iso-error.txt 最近一次检测异常情况
平时只需要查看该文件，即可知道最近是否出现异常，如果该文件为空，则表示正常。

- check-iso-error-history.txt 历史所有检测异常情况

目前在成都腾讯云机器（铜豌豆 www 主网站）、新加坡华为云节点机器部署该监控。

- 成都腾讯云
https://www.atzlinux.com/atzlinux-cd/check-iso-error.txt
https://www.atzlinux.com/atzlinux-cd/check-iso-error-history.txt

crontab：
*/13 * * * * cd /home/atzlinux/html/atzlinux-cd/; ./check-iso.sh

- 新加坡华为云
http://xjphwy.atzlinux.com/atzlinux-cd/check-iso-error.txt
http://xjphwy.atzlinux.com/atzlinux-cd/check-iso-error-history.txt

crontab：
*/9 * * * * cd /home/atzlinux/html/atzlinux-cd/; ./check-iso.sh

## iso 镜像网站搭建
todo

## iso 镜像网站同步
todo
