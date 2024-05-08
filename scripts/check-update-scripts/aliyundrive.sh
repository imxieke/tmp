#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-23 19:28:55
 # @LastEditTime: 2021-12-24 00:04:55
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/check-update-scripts/aliyundrive.sh
### 

name='alidrive'
version=$(curl -sL https://www.aliyundrive.com/ | grep latest_version | awk -F "'" '{print $2}')
url="https://yunpan.aliyun.com/downloads/apps/desktop/aDrive.dmg"
home='https://www.aliyundrive.com'
desc='阿里云盘是一款速度快、不打扰、够安全、易于分享的个人网盘，欢迎你来体验。'
arch='x86_64'