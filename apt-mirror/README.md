铜豌豆 Linux 软件源 同步

该目录下存放的文件用于 《铜豌豆 Linux》软件源 同步

- mirror.list 
在服务器上用 apt-mirror 命令直接同步的软件包

用于有 apt 源的软件包
同步第三方 apt 源

2020-11-30 同步:
https://github.com/coslyk/debianopt-repo/wiki/Package-list

如果 软件包有 apt 软件源，但是其 apt 软件源仓库太大，则不使用该方式同步

- pkg-download-url.list
使用 http 下载的软件包

