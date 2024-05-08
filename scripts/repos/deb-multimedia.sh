#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-24 20:05:25
 # @LastEditTime: 2022-09-24 20:07:50
 # @LastEditors: Cloudflying
 # @Description: 
### 

mirrors='https://mirrors.ustc.edu.cn'
name='deb-multimedia'
branchs=("bookworm" "bullseye" "bullseye-backports" "buster" "buster-backports" "experimental" "jessie" "jessie-backports" "oldoldoldstable" "oldoldoldstable-backports" "oldoldstable" "oldoldstable-backports" "oldstable" "oldstable-backports" "sid" "stable" "stable-backports" "stretch" "stretch-backports" "testing" "unstable")
repos=('main' 'non-free' 'contrib')

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