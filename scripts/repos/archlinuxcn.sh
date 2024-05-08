#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 17:53:34
 # @LastEditTime: 2022-09-23 18:29:08
 # @LastEditors: Cloudflying
 # @Description: 
### 

if [[ ! -f "${SAVE}/archlinuxcn-${date}.db.tar.gz" ]]; then
	_fetch https://mirrors.ustc.edu.cn/archlinuxcn/x86_64/archlinuxcn.db.tar.gz ${SAVE}/archlinuxcn-${date}.db.tar.gz
	_fetch https://mirrors.ustc.edu.cn/archlinuxcn/x86_64/archlinuxcn.db.tar.gz ${SAVE}/archlinuxcn-${date}.files.tar.gz
fi
