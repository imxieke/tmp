基于 archlinux
构建所有 linux 的安装包 Push 到 自托管的包平台

- 通过 Github api 快速生成 PKGBUILD

## 打包工具
- 支持定义 Git 分支
- url 下载支持另存文件名
- 支持验证 sha256sum 等

## OS Packages
- 收集 Linux 类软件包集合
- 来自 Ubuntu Debian 及其第三方的程序
- linuxmint ubuntumint 等等 linux 的操作系统软件
- 优麒麟
- 银河麒麟
- 中标麒麟

mkdir -p dists/focal/main/binary-amd64
amd64 armel armhf
mkdir -p dists/{branch}/{repo}/binary-{arch}
main contrib non-free
mkdir -p pool/{repo}

apt download vim
mv ./*.deb pool/

dpkg-scanpackages pool/ /dev/null | gzip > dists/focal/main/binary-i386/Packages.gz
dpkg-scanpackages pool/ /dev/null | gzip > dists/focal/main/binary-amd64/Packages.gz

deb [trusted=yes] http://node:8088/ubuntu/ {branch} {repo}

## AUR
- anbox
- http://ppa.launchpad.net/morphis/anbox-support/ubuntu/pool/main/a/anbox-modules/
- https://github.com/btcsuite/btcd/releases
- tor-browser
- atom
- motrix
- filezilla
- freedownloadmanager

## brew packages
- okex
- huobi
- tradeview

https://deepin-wine.i-m.dev/

## 一个有意思 异类的 DNS 工具 查天气 查 IP
https://github.com/knadh/dns.toys

- aur
- https://pinyin.sogou.com/dict/
- https://pinyin.sogou.com/skins/
- https://pinyin.sogou.com/skins/detail/view/info/559973
- https://pinyin.sogou.com/skins/detail/view/info/628364
- fcitx5-pinyin-sougou
- fcitx-sogoupinyin
- fcitx5-pinyin-sougou
- fcitx5-skin-zhuobihaotian-luotianyi
- sogoupinyin-skin-roulan

## TODO
- oh-my-zsh
- nvim && plugins
- apache2-utils (debian)
- parse linux package repo and download by mirrors

## Parse Linux Packages and third-party package repo
- alpine linux √
- archlinux
- archlinuxcn
- archlinuxarm
- blackarch
- kali
- ubuntu
- debian
- linuxmint
- centos
- bsd
- gentoo
- uos
- deepin
- ubuntukylin
- manjaro
- elementary

## File Details
- pkgs.txt aur package lists
- todo-pkgs.txt wWaiting to be added

## Package Search Command
- cmd search pkg , from all repo
- cmd search ubuntu main vim , search vim from ubuntu main repo
- 从 Ubuntu 16.04 main 分支搜索 vim
- cmd search ubuntu xenial(16.04) main vim