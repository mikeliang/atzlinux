# GPG 公钥上传

在本地生成 GPG 密钥对后，需要将公钥上传到公钥服务器，才能够方便其他人下载你的公钥，
用于对你的签名邮件进行验证，用你的公钥进行加密，导出公钥 SSH key 等。

目前互联网上有几个常用的公钥服务器，对公钥上传，email 确认，身份验证方式略有不同。

- 查看当前用户子钥、指纹、keygrip 信息：
```shell script
gpg --with-keygrip --keyid-format 0xlong --fingerprint -K
```
- 默认的上传公钥命令示例：
```shell script
gpg --send-keys 0x2F338C7DC7909957
```
## 1. keys.openpgp.org

### 使用方法：
https://keys.openpgp.org/about/usage

### 命令行上传公钥示例：
```shell script
gpg --export xsw@atzlinux.com | curl -T - https://keys.openpgp.org
```

该命令上传完成后，会在终端返回一个链接，拷贝该链接，在浏览器地址栏粘贴进入返回的链接页面，选择发送邮件进行确认。
稍后会收到确认邮件，进行确认。

### 在本地搜索接收公钥示例：
```shell script
gpg --search-keys 0x863B3E2DAD77B97E
```

注意要使用 16 位的长格式，或者 email 地址来搜索，8 位短格式的 id ，在 keys.openpgp.org 不支持，会提示无法搜索到。

其余 keyserver 的使用情况，欢迎大家补充。

## 2. keys.gnupg.net
## 3. hkps.pool.sks-keyservers.net
keys.gnupg.net 和 hkps.pool.sks-keyservers.net 是同一个服务，有多个域名。

http://hkps.pool.sks-keyservers.net/

## 4. keyserver.ubuntu.com
https://keyserver.ubuntu.com/

### 命令行上传公钥示例：
```shell script
gpg --send-keys --keyserver keyserver.ubuntu.com 7B9C9BE1659DFB8F72EB8A0EBD9322944E91726B
```

使用邮箱地址查找公钥
```shell script
gpg --keyserver keyserver.ubuntu.com --search-keys xsw@atzlinux.com
```
# 本地手动导入公钥文件
可以在以上网站网页中下载公钥到本地后，使用命令导入
```shell script
gpg --import 0x863B3E2DAD77B97E.pub
```
