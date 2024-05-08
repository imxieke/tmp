#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-07-07 06:57:56
 # @LastEditTime: 2021-07-07 08:40:13
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /deb/genconf.sh
### 

[ ! -f '.PKGINFO' ] && echo '.PKGINFO File Not Found' && exit 1
Package=$(cat .PKGINFO | grep '^pkgname' | sed 's/^pkgname/Package/g' | sed 's/ =/:/g' )
Version=$(cat .PKGINFO | grep '^pkgver' | sed 's/^pkgver/Version/g' | sed 's/ =/:/g')
Description=$(cat .PKGINFO | grep '^pkgdesc' | sed 's/^pkgdesc/Description/g' | sed 's/ =/:/g')
Homepage=$(cat .PKGINFO | grep '^url' | sed 's/^url/Homepage/g' | sed 's/ =/:/g')
Maintainer='Maintainer: Cloudflying <oss@live.hk>'
Installed_Size=$(cat .PKGINFO | grep '^size' | sed 's/^size/Installed-Size/g' | sed 's/ =/:/g')
Architecture=$(cat .PKGINFO | grep '^arch' | sed 's/^arch/Architecture/g' | sed 's/ =/:/g')

if [[ -n "$(echo ${Architecture} | grep x86_64)" ]]; then
    Architecture="Architecture: amd64"
elif [[ -n "$(echo ${Architecture} | grep i686)" ]]; then
    Architecture="Architecture: i386"
elif [[ -n "$(echo ${Architecture} | grep aarh64)" ]]; then
    Architecture="Architecture: arm64"
elif [[ -n "$(echo ${Architecture} | grep any)" ]]; then
    Architecture="Architecture: all"
fi

# Architecture=$(echo ${Architecture} | sed 's/x86_64/amd64/g')
# Architecture=$(echo ${Architecture} | sed 's/x86_64/amd64/g')
Depends=$(cat .PKGINFO | grep '^depend =' | awk -F '= ' '{print $2}')
Depends=$(echo ${Depends} | sed 's/ /,/g')
Recommends=$(cat .PKGINFO | grep '^optdepend =' | awk -F '= ' '{print $2}' | awk -F ':' '{print $1}')
Recommends=$(echo ${Recommends} | sed 's/ /,/g')

# File Format : name-version-arch.deb
file=$(echo $Package | awk -F ': ' '{print $2}')
file="$file-"$(echo $Version |awk -F ': ' '{print $2}' )
file="$file-"$(echo $Architecture |awk -F ': ' '{print $2}' )".deb"
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