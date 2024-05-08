#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-24 08:22:23
 # @LastEditTime: 2022-09-24 08:32:06
 # @LastEditors: Cloudflying
 # @Description: 
### 
name='deepin'
branchs=("apricot")
repos=('contrib' 'main' 'non-free')
mirrors='https://mirrors.tuna.tsinghua.edu.cn'

[ -f "${SAVE}/${name}-${branchs[0]}-${repos[0]}-${date}.Packages.gz" ] && return 0

for branch in ${branchs[*]}
do
	for repo in ${repos[*]}
	do
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/binary-amd64/Packages.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Packages.gz
		_fetch "${mirrors}/${name}/dists/${branch}/${repo}/Contents-amd64.gz" ${SAVE}/${name}-${branch}-${repo}-${date}.Contents-amd64.gz
	done
done