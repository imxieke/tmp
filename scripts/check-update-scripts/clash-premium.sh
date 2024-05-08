#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-24 01:11:42
 # @LastEditTime: 2021-12-24 01:15:45
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/check-update-scripts/clash-premium.sh
### 
name='clash-premium'
version=$(curl -sL https://api.github.com/repos/Dreamacro/clash/releases | grep premium | grep 'browser' | grep 'linux-amd64' | awk -F 'amd64-' '{print $2}' | awk -F '.gz' '{print $1}')
