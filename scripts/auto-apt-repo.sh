#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-10 17:59:52
 # @LastEditTime: 2021-12-10 18:01:13
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/auto-apt-repo.sh
### 

ARCH="amd64 armhf armel"
COMP="contrib main non-free"

for arch in $ARCH
do
        for cc in $COMP 
        do
                dpkg-scanpackages -a $arch pool/$cc > dists/jessie/$cc/binary-$arch/Packages
                gzip -9c dists/jessie/$cc/binary-$arch/Packages > dists/jessie/$cc/binary-$arch/Packages.gz
        done
done

for cc in $COMP
do
        dpkg-scansources pool/$cc > dists/jessie/$cc/source/Sources
        gzip -9c dists/jessie/$cc/source/Sources > dists/jessie/$cc/source/Sources.gz
done

rm -f dists/jessie/Release
rm -f dists/jessie/InRelease
rm -f dists/jessie/Release.gpg
apt-ftparchive -c /home/buildd/debian-dev/apt-release.cnf  release dists/jessie > .Release
mv .Release dists/jessie/Release
gpg --clearsign -o dists/jessie/InRelease dists/jessie/Release
gpg -o dists/jessie/Release.gpg -abs dists/jessie/Release

#以上脚本用于生成Packages文件和Sources文件，并生成.gz压缩包；
#apt-ftparchive release时用到了上一步的apt-release.cnf配置文件，用于Release文件头部分信息的生成；
# deb包签名
# dpkg-sig --sign builder file1.deb