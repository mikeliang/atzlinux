GPG 公钥上传

在本地生成 GPG 密钥对后，需要将公钥上传到公钥服务器，才能够方便其他人下载你的公钥，
用于对你的签名邮件进行验证，用你的公钥进行加密，导出公钥 SSH key 等。

目前互联网上有几个常用的公钥服务器，对公钥上传，email 确认，身份验证方式略有不同。

## keys.openpgp.org

使用方法：
https://keys.openpgp.org/about/usage

命令行上传公钥示例：
gpg --export xsw@atzlinux.com | curl -T - https://keys.openpgp.org

上传完成后，会收到确认邮件，进行确认。

在本地搜索接收公钥示例：
gpg --search-keys 0x863B3E2DAD77B97E

注意要使用 16 位的长格式，或者 email 地址来搜索，8 位短格式的 id ，在 keys.openpgp.org 不支持，会提示无法搜索到。

其余 keyserver 的使用情况，欢迎大家补充。

## hkps.pool.sks-keyservers.net
http://hkps.pool.sks-keyservers.net/
