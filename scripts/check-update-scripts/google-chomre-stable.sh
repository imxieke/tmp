#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-24 00:39:25
 # @LastEditTime: 2021-12-24 00:41:53
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/check-update-scripts/google-chomre-stable.sh
### 
name='google-chrome'
version=$(curl -sSf https://dl.google.com/linux/chrome/deb/dists/stable/main/binary-amd64/Packages | grep -A1 "Package: ${PKG}" | awk '/Version/{print $2}' | cut -d '-' -f1 | sed -n '2,2p')

# Get channel
CHANNEL=$(awk -F '=' '/^_channel/{ print $2 }' PKGBUILD)
PKG="google-chrome-${CHANNEL}"