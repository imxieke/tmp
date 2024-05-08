#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-07-25 09:50:52
 # @LastEditTime: 2022-07-25 09:51:06
 # @LastEditors: Cloudflying
 # @Description: tradingview
 # @FilePath: /packages/scripts/updater/lists/tradingview.sh
### 

## run these to get the source URL and the version, require jq

# curl -sH 'X-Ubuntu-Series: 16' https://api.snapcraft.io/api/v1/snaps/details/tradingview | jq '.download_url' -r

# curl -sH 'X-Ubuntu-Series: 16' https://api.snapcraft.io/api/v1/snaps/details/tradingview | jq '.version' -r