#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 19:02:34
 # @LastEditTime: 2022-09-24 01:01:50
 # @LastEditors: Cloudflying
 # @Description: 
### 

name="alpine"
# mirrors="https://mirrors.ustc.edu.cn"
branchs=('3.8' '3.9' '3.10' '3.11' '3.12' '3.13' '3.14' '3.15' '3.16')
repos=('community' 'main')

if [[ ! -f "${SAVE}/${name}-edge-main-${date}.tar.gz" ]]; then
	for branch in ${branchs[*]}
	do
		for repo in ${repos[*]}
		do
			db="${mirrors}/${name}/v${branch}/${repo}/x86_64/APKINDEX.tar.gz"
			_fetch ${db} "${SAVE}/${name}-${branch}-${repo}-${date}.tar.gz"
		done
	done

	_fetch ${mirrors}/alpine/edge/main/x86_64/APKINDEX.tar.gz ${SAVE}/${name}-edge-main-${date}.tar.gz
	_fetch ${mirrors}/alpine/edge/main/x86_64/APKINDEX.tar.gz ${SAVE}/${name}-edge-community-${date}.tar.gz
	_fetch ${mirrors}/alpine/edge/main/x86_64/APKINDEX.tar.gz ${SAVE}/${name}-edge-testing-${date}.tar.gz
fi