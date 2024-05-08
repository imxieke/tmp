#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 16:43:17
 # @LastEditTime: 2022-09-24 01:03:47
 # @LastEditors: Cloudflying
 # @Description: 
### 

name='archlinux'
# mirrors="https://mirrors.aliyun.com/${name}"
# mirrors="https://mirrors.tencent.com/${name}"

dbs=( 'community' 'community-staging' 'community-testing' 'core' 'extra' 'gnome-unstable' 'kde-unstable' 'multilib' 'multilib-staging' 'multilib-testing' 'staging' 'testing' )

if [[ ! -f "${SAVE}/archlinux-core-${date}.db.tar.gz" ]]; then
	for db in ${dbs[*]}
	do
		url=${mirrors}/${name}/${db}/os/x86_64
		_fetch ${url}/${db}.db.tar.gz ${SAVE}/${name}-${db}-${date}.db.tar.gz
		_fetch ${url}/${db}.files.tar.gz ${SAVE}/${name}-${db}-${date}.files.tar.gz
	done
fi