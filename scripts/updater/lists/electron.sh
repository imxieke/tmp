#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-21 00:39:52
 # @LastEditTime: 2022-09-21 01:15:39
 # @LastEditors: Cloudflying
 # @Description:  
 # @FilePath: /packages/scripts/updater/lists/electron.sh
### 

# latest beta v15 v20  etc ...
version=$1

# https://github.com/electron/electron/releases/download/v15.5.7/chromedriver-v15.5.7-linux-x64.zip
# https://github.com/electron/electron/releases/download/v14.2.9/chromedriver-v14.2.9-linux-x64.zip

# https://github.com/electron/electron/releases/download/v15.5.7/electron-v15.5.7-linux-x64.zip
# https://github.com/electron/electron/releases/download/v14.2.9/electron-v14.2.9-linux-x64.zip
# https://github.com/electron/electron/releases/download/v21.0.0-beta.7/electron-v21.0.0-beta.7-linux-x64.zip


# https://github.com/electron/electron/releases/download/v15.5.7/ffmpeg-v15.5.7-linux-x64.zip
# https://github.com/electron/electron/releases/download/v15.5.7/libcxx-objects-v15.5.7-linux-x64.zip
# https://github.com/electron/electron/releases/download/v15.5.7/mksnapshot-v15.5.7-linux-x64.zip

url="https://github.com/electron/electron/releases"

if [[ -n "${version}" ]]; then
	if [[ "${version}" == 'latest' ]]; then
		curl -sL https://api.github.com/repos/electron/electron/releases/latest | jq .tag_name | sed 's#"##g'
	else
		url="${url}?q=${version}&expanded=true"
		curl -sL ${url} | grep "/electron/electron/tree/" | awk -F '"' '{print $2}' | sed "s#/electron/electron/tree/v##g" | head -n 1

	fi
else
	curl -sL https://api.github.com/repos/electron/electron/releases/latest | jq .tag_name | sed 's#"##g'
fi
