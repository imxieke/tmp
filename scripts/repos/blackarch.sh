#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 18:33:00
 # @LastEditTime: 2022-09-23 18:35:15
 # @LastEditors: Cloudflying
 # @Description: 
### 

if [[ ! -f "${SAVE}/blackarch-${date}.db.tar.gz" ]]; then
	_fetch https://mirrors.ustc.edu.cn/blackarch/blackarch/os/x86_64/blackarch.db.tar.gz ${SAVE}/blackarch-${date}.db.tar.gz
	_fetch https://mirrors.ustc.edu.cn/blackarch/blackarch/os/x86_64/blackarch.files.tar.gz ${SAVE}/blackarch-${date}.files.tar.gz
fi
