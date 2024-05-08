#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-23 16:41:29
 # @LastEditTime: 2023-10-21 16:45:56
 # @LastEditors: Cloudflying
 # @Description: Fetch Latest package repo
### 

date=$(date "+%Y-%m-%d")

PWD=$(realpath $(dirname $0))
SAVE=${PWD}/db-files

# 存在的使用该设置 不存在的使用内置自定义变量
# mirrors="https://mirrors.ustc.edu.cn"
# mirrors="https://repo.huaweicloud.com"
# mirrors="https://mirrors.tencent.com"
# 403
# mirrors="https://mirrors.aliyun.com"
# mirrors="https://opentuna.cn"
mirrors="https://mirrors.tuna.tsinghua.edu.cn"
# mirrors="https://mirrors.hit.edu.cn"
# mirrors="https://mirrors.bfsu.edu.cn"
# mirrors="https://mirrors.nju.edu.cn"
# mirrors="http://mirror.lzu.edu.cn"
# mirrors="http://mirrors.neusoft.edu.cn"
# mirrors="http://mirrors.zju.edu.cn"
# mirrors="https://mirrors.cqu.edu.cn"
# mirrors="http://mirrors.yun-idc.com"
# mirrors="http://mirror.bit.edu.cn"
# mirrors="https://mirrors.cnnic.cn"
# mirrors="https://mirror.sjtu.edu.cn"
# mirrors="https://mirror.iscas.ac.cn"
# https://mirror-cdn.xtom.com/
# https://mirrors.xtom.hk/
# https://mirrors.xtom.jp/
# https://mirrors.cernet.edu.cn

# 小文件不适合使用 axel
_fetch()
{
	DOWNLOADER='wget'
	if [[ -n "${2}" ]]; then
		_WGET_OUTPUT="-O $2"
		_AXEL_OUTPUT="-o $2"
	fi

	if [[ "${DOWNLOADER}" == 'axel' ]]; then
		axel -k -v -a -n 4 -H 'User-Agent: Mozilla/5.0' $1 $_AXEL_OUTPUT
	elif [[ "${DOWNLOADER}" == 'wget' ]]; then
		wget -c --no-check-certificate $1 $_WGET_OUTPUT
	fi
}

for repo in $(ls "${PWD}/repos/*.sh")
do
	# echo "$repo"
	source "$repo"
done
