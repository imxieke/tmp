#!/usr/bin/env bash
###
# @Author: Cloudflying
# @Date: 2021-07-06 19:18:08
 # @LastEditTime: 2021-07-07 16:57:01
 # @LastEditors: Cloudflying
# @Description:
 # @FilePath: /deb/deb.sh
###
# TODO
# Convert Archlinux to deb
# Convert rpm to deb

REPO_DIR=$(pwd)/repo

# 生成 Release 文件
# deb file:///opt/debs ./
# 未签名使用
# deb [trusted=yes] file:///opt/debs ./
genRelease() {
    cd $1
    dpkg-scanpackages $(pwd) > Release
    dpkg-scanpackages $(pwd) | gzip -c9 > Packages.gz
    dpkg-scansources $(pwd)  > Sources
    dpkg-scansources $(pwd)  | gzip -9 > Sources.gz
}

genControl()
{
    PKGINFO=`pwd`'/build/.PKGINFO'
    [ ! -f "$PKGINFO" ] && echo "$PKGINFO File Not Found" && exit 1
    Package=$(cat $PKGINFO | grep '^pkgname' | sed 's/^pkgname/Package/g' | sed 's/ =/:/g' )
    Version=$(cat $PKGINFO | grep '^pkgver' | sed 's/^pkgver/Version/g' | sed 's/ =/:/g')
    Description=$(cat $PKGINFO | grep '^pkgdesc' | sed 's/^pkgdesc/Description/g' | sed 's/ =/:/g')
    Homepage=$(cat $PKGINFO | grep '^url' | sed 's/^url/Homepage/g' | sed 's/ =/:/g')
    Maintainer='Maintainer: Cloudflying <oss@live.hk>'
    Installed_Size=$(cat $PKGINFO | grep '^size' | sed 's/^size/Installed-Size/g' | sed 's/ =/:/g')
    Architecture=$(cat $PKGINFO | grep '^arch' | sed 's/^arch/Architecture/g' | sed 's/ =/:/g')

    if [[ -n "$(echo ${Architecture} | grep x86_64)" ]]; then
        Architecture="Architecture: amd64"
    elif [[ -n "$(echo ${Architecture} | grep i686)" ]]; then
        Architecture="Architecture: i386"
    elif [[ -n "$(echo ${Architecture} | grep aarh64)" ]]; then
        Architecture="Architecture: arm64"
    elif [[ -n "$(echo ${Architecture} | grep any)" ]]; then
        Architecture="Architecture: all"
    fi

    Depends=$(cat $PKGINFO | grep '^depend =' | awk -F '= ' '{print $2}')
    Depends=$(echo ${Depends} | sed 's/ /,/g')
    Recommends=$(cat $PKGINFO | grep '^optdepend =' | awk -F '= ' '{print $2}' | awk -F ':' '{print $1}')
    Recommends=$(echo ${Recommends} | sed 's/ /,/g')

    # echo $file
    [ -n "$Package" ] && echo $Package
    [ -n "$Version" ] && echo $Version
    [ -n "$Homepage" ] && echo $Homepage
    [ -n "$Description" ] && echo $Description
    [ -n "$Maintainer" ] && echo $Maintainer
    [ -n "$Installed_Size" ] && echo $Installed_Size
    [ -n "$Architecture" ] && echo $Architecture
    [ -n "$Depends" ] && echo "Depends: $Depends"
    [ -n "$Recommends" ] && echo "Recommends: $Recommends"
}

convert_arch_to_deb()
{
    [ ! -f "$1" ] && echo 'file not exist , please select again' && exit
    mkdir -p build
    rm -fr build/* >> /dev/null 2>&1
    rm -fr build/.* >> /dev/null 2>&1

    case "$1" in
        # old format
        *.tar.xz) echo 1
            tar -xvf $1 -C build/ >> /dev/null 2>&1
            ;;
        *.tar.zst)
            tar -I zstd -xvf $1 -C build/ >> /dev/null 2>&1
            ;;
        *)
            echo 'unkow format , Please select again '
            exit 1
            ;;
    esac
    # cd build
    # File Format : name-version-arch.deb
    name=$(cat build/.PKGINFO | grep '^pkgname' | awk -F '= ' '{print $2}')
    version=$(cat build/.PKGINFO | grep '^pkgver' | awk -F '= ' '{print $2}')
    arch=$(cat build/.PKGINFO | grep '^arch' | awk -F '= ' '{print $2}')
    if [[ -n "$(echo ${arch} | grep x86_64)" ]]; then
        arch="amd64"
    elif [[ -n "$(echo ${arch} | grep i686)" ]]; then
        arch="i386"
    elif [[ -n "$(echo ${arch} | grep aarh64)" ]]; then
        arch="arm64"
    elif [[ -n "$(echo ${arch} | grep any)" ]]; then
        arch="all"
    fi
    file="$name-$version-$arch.deb"
    mkdir -p `pwd`/build/DEBIAN
    genControl > `pwd`/build/DEBIAN/control
    rm -fr ./build/.* >> /dev/null 2>&1
    dpkg-deb -b build $file
}

ppa()
{
	echo "deb http://ppa.launchpad.net/$ppa_name/ubuntu lucid main" >> /etc/apt/sources.list
	apt-get update >> /dev/null 2> /tmp/${NAME}_apt_add_key.txt
	key=`cat /tmp/${NAME}_apt_add_key.txt | cut -d":" -f6 | cut -d" " -f3`
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $key
}

case "$1" in
    1) echo 1
    ;;
    2|3) echo 2 or 3
    ;;
    *)
        echo "Usage: convert"
        ;;
esac
