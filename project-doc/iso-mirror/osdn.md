- osdn 同步到北师大的镜像：
https://mirrors.bfsu.edu.cn/osdn/storage/g/a/at/atzlinux/atzlinux-cd/

- osdn xtom.com.hk 镜像
https://mirrors.xtom.com.hk/osdn/storage/g/a/at/atzlinux/atzlinux-cd/

## osdn 文件上传信息
- https://osdn.net/projects/atzlinux/admin/storage/

osdn 可以使用 rsync sftp scp 上传文件。

### 示例如下：

- rsync over ssh
rsync -a /your/files/dir/ atzlinux@storage.osdn.net:/storage/groups/a/at/atzlinux/
- scp
scp -r srcfiles... atzlinux@storage.osdn.net:/storage/groups/a/at/atzlinux/
- sftp
sftp atzlinux@storage.osdn.net:/storage/groups/a/at/atzlinux
