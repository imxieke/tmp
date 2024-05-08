#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-24 01:16:49
 # @LastEditTime: 2022-09-24 07:57:47
 # @LastEditors: Cloudflying
 # @Description: 
### 

name='ubuntu'
branchs=("bionic" "bionic-backports" "bionic-proposed" "bionic-security" "bionic-updates" "devel" "devel-backports" "devel-proposed" "devel-security" "devel-updates" "focal" "focal-backports" "focal-proposed" "focal-security" "focal-updates" "jammy" "jammy-backports" "jammy-proposed" "jammy-security" "jammy-updates" "kinetic" "kinetic-backports" "kinetic-proposed" "kinetic-security" "kinetic-updates" "trusty" "trusty-backports" "trusty-proposed" "trusty-security" "trusty-updates" "xenial" "xenial-backports" "xenial-proposed" "xenial-security" "xenial-updates")

repos=('main' 'multiverse' 'restricted' 'universe')
# https://mirrors.ustc.edu.cn/ubuntu/dists/bionic/InRelease
# https://mirrors.ustc.edu.cn/ubuntu/dists/bionic/Release
# https://mirrors.ustc.edu.cn/ubuntu/dists/bionic/main/binary-amd64/Release
# https://mirrors.ustc.edu.cn/ubuntu/dists/bionic/main/binary-amd64/Packages.gz
# https://mirrors.ustc.edu.cn/ubuntu/dists/bionic/Contents-amd64.gz

[ -f "${SAVE}/${name}-xenial-updates-universe-${date}.Packages.gz" ] && return 0

for branch in ${branchs[*]}
do
	for repo in ${repos[*]}
	do
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/binary-amd64/Packages.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Packages.gz
		_fetch "${mirrors}/${name}/dists/${branch}/Contents-amd64.gz" ${SAVE}/${name}-${branch}-${date}.Contents-amd64.gz
	done
done
