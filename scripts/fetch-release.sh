#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-09 23:38:20
 # @LastEditTime: 2022-07-28 00:22:49
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/fetch-release.sh
### 

URL='https://home-store-packages.chinauos.com/appstore/pool/appstore/d/deepin-elf-sign-tool/deepin-elf-sign-tool_0.2.5.8-1_mips64el.deb'

curl -I ${URL} \
  -H 'Connection: keep-alive' \
  -H 'Cache-Control: max-age=0' \
  -H 'DNT: 1' \
  -H 'Upgrade-Insecure-Requests: 1' \
  -H 'User-Agent:  UOS' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
  -H 'Referer: http://home-store-packages.chinauos.com/' \
  -H 'Accept-Language: en-US,en;q=0.9,zh-CN;q=0.8,zh;q=0.7' \
  -H 'If-None-Match: "5fede9e2-11064"' \
  -H 'If-Modified-Since: Thu, 31 Dec 2020 15:10:26 GMT' \
  --compressed \
  --insecure

# Neofetch
wget https://github.com/dylanaraps/neofetch/raw/master/neofetch -O neofetch

wget https://github.com/KittyKatt/screenFetch/raw/master/screenfetch-dev -O screenfetch

wget -q https://github.com/dylanaraps/pfetch/raw/master/pfetch -O pfetch

wget https://typora.io/linux/Typora-linux-x64.tar.gz -O typora-linux-x64.tar.gz

update_deb_repo()
{
	mkdir -p /tmp/.linux-pkgs/
	cd /tmp/.linux-pkgs/
	wget https://dl.winehq.org/wine-builds/ubuntu/dists/cosmic/main/binary-amd64/Packages -O wine

	wget http://security.ubuntu.com/ubuntu/dists/bionic/multiverse/binary-amd64/Packages.gz
	gzip -d Packages.gz && rm -fr Packages.gz mv Packages ubuntu-security-multiverse

	wget http://security.ubuntu.com/ubuntu/dists/bionic/main/binary-amd64/Packages.gz
	gzip -d Packages.gz && rm -fr Packages.gz mv Packages ubuntu-security-main

	wget http://security.ubuntu.com/ubuntu/dists/bionic/restricted/binary-amd64/Packages.gz
	gzip -d Packages.gz && rm -fr Packages.gz mv Packages ubuntu-restricted-main

	wget http://security.ubuntu.com/ubuntu/dists/bionic/universe/binary-amd64/Packages.gz
	gzip -d Packages.gz && rm -fr Packages.gz mv Packages ubuntu-universe-main

	wget https://community-packages.deepin.com/deepin/dists/apricot/contrib/binary-amd64/Packages -O deepin-contrib-apricot
	wget https://community-packages.deepin.com/deepin/dists/apricot/main/binary-amd64/Packages.gz
	gzip -d Packages.gz && rm -fr Packages.gz mv Packages deepin-apricot-apricot
	wget https://community-packages.deepin.com/deepin/dists/apricot/non-free/binary-amd64/Packages -O deepin-apricot-non-free
	wget https://uos.deepin.cn/uos/dists/eagle/non-free/binary-amd64/Packages -O uos-eagle-non-free
	wget https://uos.deepin.cn/uos/dists/eagle/contrib/binary-amd64/Packages -O uos-eagle-contrib
	wget https://uos.deepin.cn/uos/dists/eagle/main/binary-amd64/Packages -O uos-eagle-main
	wget http://archive.ubuntukylin.com/ubuntukylin/dists/groovy-partner/main/binary-amd64/Packages -O ubuntukylin-groovy-partner-main
	wget http://archive.ubuntukylin.com/ubuntukylin/dists/focal/main/binary-amd64/Packages -O ubuntukylin-focal-main
	wget http://archive.ubuntukylin.com/ubuntukylin/dists/focal-partner/main/binary-amd64/Packages -O ubuntukylin-focal-partner-main
	wget http://archive.ubuntukylin.com/ubuntukylin/dists/groovy/main/binary-amd64/Packages -O ubuntukylin-groovy-main

	wget http://archive.ubuntukylin.com/ukui/dists/focal-partner/main/binary-amd64/Packages -O ukui-focal-partner-main
	wget http://archive.ubuntukylin.com/ukui/dists/focal/main/binary-amd64/Packages -O ukui-focal-main
	wget http://archive.ubuntukylin.com/ukui/dists/groovy-partner/main/binary-amd64/Packages -O ukui-groovy-partner-main
	wget http://archive.ubuntukylin.com/ukui/dists/groovy/main/binary-amd64/Packages -O ukui-groovy-main

	wget http://archive.ubuntukylin.com/software/dists/focal-partner/main/binary-amd64/Packages -O software-focal-partner-main
	wget http://archive.ubuntukylin.com/software/dists/focal/main/binary-amd64/Packages -O software-focal-main
	wget http://archive.ubuntukylin.com/software/dists/groovy-partner/main/binary-amd64/Packages -O software-groovy-partner-main
	wget http://archive.ubuntukylin.com/software/dists/groovy/main/binary-amd64/Packages -O software-groovy-main

	wget https://dl.google.com/linux/chrome/deb/dists/stable/main/binary-amd64/Packages -O chrome
	wget https://download.sublimetext.com/apt/stable/Packages -O sublime
	wget https://packages.microsoft.com/repos/code/dists/stable/main/binary-amd64/Packages -O vscode

	# kali
	wget https://mirrors.aliyun.com/kali/dists/kali-rolling/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-rolling/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-rolling/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-experimental/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-experimental/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-experimental/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-dev/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-dev/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-dev/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-dev-only/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-dev-only/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-dev-only/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-debian-picks/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-debian-picks/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-debian-picks/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-bleeding-edge/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-bleeding-edge/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-bleeding-edge/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/debian-testing/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/debian-testing/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/debian-testing/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-last-snapshot/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-last-snapshot/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-last-snapshot/contrib/binary-amd64/Packages -O kali-rolling-contrib

	wget https://mirrors.aliyun.com/kali/dists/kali-rolling-only/non-free/binary-amd64/Packages -O kali-rolling-non-free
	wget https://mirrors.aliyun.com/kali/dists/kali-rolling-only/main/binary-amd64/Packages -O kali-rolling-main
	wget https://mirrors.aliyun.com/kali/dists/kali-rolling-only/contrib/binary-amd64/Packages -O kali-rolling-contrib
	https://mirrors.aliyun.com/linuxmint-packages/dists/
}