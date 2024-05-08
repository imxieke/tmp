#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-24 00:53:43
 # @LastEditTime: 2021-12-24 00:53:44
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/check-update-scripts/clash-geoip.sh
### 
name='clash-geoip'
version=$(curl -sI https://github.com/Dreamacro/maxmind-geoip/releases/latest | grep '^location:' | awk -F 'releases/tag/' '{print $2}')
desc='A terminal built on web technologies'
arch='x86_64'