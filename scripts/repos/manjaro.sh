#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 18:38:18
 # @LastEditTime: 2022-09-24 00:41:24
 # @LastEditors: Cloudflying
 # @Description: 
### 

branchs=('testing' 'stable' 'unstable')
repos=('community' 'core' 'extra' 'multilib' kde-'unstable')

if [[ ! -f "${SAVE}/manjaro-testing-community-${date}.db.tar.gz" ]]; then
	for branch in ${branchs[*]}
	do
		for repo in ${repos[*]}
		do
			db="${mirrors}/manjaro/${branch}/${repo}/x86_64/${repo}.db.tar.gz"
			files="${mirrors}/manjaro/${branch}/${repo}/x86_64/${repo}.files.tar.gz"
			_fetch "$db" "${SAVE}/manjaro-${branch}-${repo}-${date}.db.tar.gz"
			_fetch "$files" "${SAVE}/manjaro-${branch}-${repo}-${date}.files.tar.gz"
		done
	done
fi