#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-24 02:02:08
 # @LastEditTime: 2022-09-24 08:27:44
 # @LastEditors: Cloudflying
 # @Description: 
### 

name='debian'
branchs=("Debian10.13" "Debian11.5" "Debian8.11" "Debian9.13" "bookworm" "bookworm-backports" "bookworm-proposed-updates" "bookworm-updates" "bullseye" "bullseye-backports" "bullseye-backports-sloppy" "bullseye-proposed-updates" "bullseye-updates" "buster" "buster-backports" "buster-backports-sloppy" "buster-proposed-updates" "buster-updates" "experimental" "jessie" "jessie-updates" "oldoldoldstable" "oldoldoldstable-updates" "oldoldstable" "oldoldstable-backports" "oldoldstable-backports-sloppy" "oldoldstable-proposed-updates" "oldoldstable-updates" "oldstable" "oldstable-backports" "oldstable-backports-sloppy" "oldstable-proposed-updates" "oldstable-updates" "proposed-updates" "rc-buggy" "sid" "stable" "stable-backports" "stable-backports-sloppy" "stable-proposed-updates" "stable-updates" "stretch" "stretch-backports" "stretch-backports-sloppy" "stretch-proposed-updates" "stretch-updates" "testing" "testing-backports" "testing-proposed-updates" "testing-updates" "unstable")
repos=('contrib' 'main' 'non-free')

# https://mirrors.ustc.edu.cn/debian/dists/bullseye/non-free/Contents-amd64.gz
# https://mirrors.ustc.edu.cn/debian/dists/bullseye/non-free/binary-amd64/Packages.gz
# https://mirrors.ustc.edu.cn/debian/dists/bullseye/non-free/binary-all/Packages.gz

# https://mirrors.ustc.edu.cn/debian/dists/bullseye/non-free/binary-all/Release
# https://mirrors.ustc.edu.cn/debian/dists/bullseye/non-free/binary-amd64/Release

[ -f "${SAVE}/${name}-${branchs[0]}-${repos[0]}-${date}.Packages.gz" ] && return 0

for branch in ${branchs[*]}
do
	for repo in ${repos[*]}
	do
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/binary-amd64/Packages.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Packages.gz
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/binary-all/Packages.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Packages-all.gz
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/Contents-amd64.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Contents-amd64.gz
	done
done