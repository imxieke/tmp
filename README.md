## Packages
> 弥补官方不存在的包和最新版本的包

- 优先使用 二进制包

等待安装
vulkan-tools

## 分发
- vps 同步至 `OSDN`
- osdn(含 Mirrors)
- sourceforge

rsync -avrtp --progress ./ boxs@storage.osdn.net:/storage/groups/m/mk/mkpkg/pacman/

rsync -a /your/files/dir/ boxs@storage.osdn.net:/storage/groups/m/mk/mkpkg/
scp -r srcfiles... boxs@storage.osdn.net:/storage/groups/m/mk/mkpkg/
sftp boxs@storage.osdn.net:/storage/groups/m/mk/mkpkg

rsync -avrtp --progress ./ imxieke@frs.sourceforge.net:/home/frs/project/mkpkg/pacman

scp file.zip jsmith@frs.sourceforge.net:/home/frs/project/fooproject/release1
sftp jsmith@frs.sourceforge.net:/home/frs/project/fooproject/release1

## 目录结构
- packages
	- 存储一些可能过时但是还有用处的包 如 deepin
- pacman
  - Archlinux Packages
- PKGBUILD 软件包构建脚本
- repo 软件包生成存储目录
- build 软件构建缓存目录

## AUR
- 编写 PKGBUILD 经过打包并验证后存于 `packages/pacman` 目录

- https://packages.debian.org/stable/allpackages?format=txt.gz
- https://github.com/makedeb/makedeb
- dpkg-buildpackage -b

## Debian 工具箱
- https://github.com/makedeb/makedeb
- https://github.com/hwittenborn/mpm
- https://github.com/makedeb/makedeb-db

## 仓库分为 aur 包和自维护包

## 第三方仓库
```
pacman-key --recv-keys 63CC496475267693
pacman-key --lsign-key 63CC496475267693
[alerque]
Server = https://arch.alerque.com/$arch
[archlinuxcn]
Server = http://repo.archlinuxcn.org/$arch
[archstrike]
Server = https://mirror.archstrike.org/$arch/$repo
[bioarchlinux]
Server = https://repo.bioarchlinux.org/$arch
```

https://mirrors.gigenet.com/OSDN//storage/g/x/xi/xiaomifirmwareupdater/Stable/V12/selene/fw_selene_miui_SELENEINGlobal_V12.5.10.0.RKUINXM_d9072c3a48_11.0.zip
https://free.nchc.org.tw/osdn//storage/g/x/xi/xiaomifirmwareupdater/Stable/V12/selene/fw_selene_miui_SELENEINGlobal_V12.5.10.0.RKUINXM_d9072c3a48_11.0.zip
https://mirrors.gigenet.com/OSDN//storage/g/x/xi/xiaomifirmwareupdater/Stable/V12/selene/fw_selene_miui_SELENEINGlobal_V12.5.10.0.RKUINXM_d9072c3a48_11.0.zip
https://ftp.halifax.rwth-aachen.de/osdn/storage/g/x/xi/xiaomifirmwareupdater/Stable/V12/selene/fw_selene_miui_SELENEINGlobal_V12.5.10.0.RKUINXM_d9072c3a48_11.0.zip
https://osdn.dl.osdn.net/storage/g/x/xi/xiaomifirmwareupdater/Stable/V12/selene/fw_selene_miui_SELENEINGlobal_V12.5.10.0.RKUINXM_d9072c3a48_11.0.zip


## TODO
- 实现自动化检测程序最新版本并于本地进行对比
- jetbrains ide

## Repo format

### apt 类系统程序包归档
- deb main

## Build Package for OS
- Archlinux 
- Debian/Ubuntu/Deepin
- macos brew (if support)
- alpine

## Build Package Arch
- x86_64

## Package OS
- macOS(brew)
- Archlinux/Manjaro
- Ubuntu Xenial 16.04
- Ubuntu Bionic 18.04
- Ubuntu 20.04
- Ubuntu 20.10
- Ubuntu Focal 22.04
- Ubuntu Jammy 22.10
- Debian sid Still In Development
- Debian bulleyes 11
- Debian buster 10
- Linuxmint
- Deepin
- UOS
- and More `apt pacman` Based OS