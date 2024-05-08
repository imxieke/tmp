### deb包的组成结构
```
控制文件   描述
control   用了记录软件标识，版本号，平台，依赖信息等数据
preinst   在解包data.tar.gz前运行的脚本
postinst   在解包数据后运行的脚本
prerm   卸载时，在删除文件之前运行的脚本
postrm   在删除文件之后运行的脚本
```