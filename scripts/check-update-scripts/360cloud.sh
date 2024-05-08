#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-23 23:59:08
 # @LastEditTime: 2022-07-12 16:38:56
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/check-update-scripts/360cloud.sh
### 
info=$(curl -sL https://yunpan.360.cn/share_download_config.html | grep -Eo "https://down.360safe.com/360eyun\S+deepin-x86_64.deb")
name='360cloud'
home='https://yunpan.360.cn'
echo ${version}
arch='x86_64'