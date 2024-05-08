#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-23 22:29:24
 # @LastEditTime: 2021-12-24 00:04:51
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/check-update-scripts/hyper-terminal.sh
### 
name='hyper-terminal'
version=$(curl -sI https://github.com/vercel/hyper/releases/latest | grep '^location:' | awk -F 'releases/tag/v' '{print $2}')
desc='A terminal built on web technologies'
arch='x86_64'