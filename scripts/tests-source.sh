#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-09-24 14:44:22
 # @LastEditTime: 2022-09-24 18:42:33
 # @LastEditors: Cloudflying
 # @Description: 
### 

# 主站 似乎只跳转 不提供下载
# https://downloads.sourceforge.net

# 不加参数会跳转 ?viasf=1

mirrors=(
	"https://master.dl.sourceforge.net"
	"https://jaist.dl.sourceforge.net"
	"https://udomain.dl.sourceforge.net"
	"https://ixpeering.dl.sourceforge.net"
	"https://netix.dl.sourceforge.net"
	"https://netcologne.dl.sourceforge.net"
	"https://freefr.dl.sourceforge.net"
	"https://cfhcable.dl.sourceforge.net"
	"https://jztkft.dl.sourceforge.net"
	"https://versaweb.dl.sourceforge.net"
	"https://ufpr.dl.sourceforge.net"
	# 302
	"http://osdn.dl.sourceforge.net"
	# 慢的雅痞
	"https://nav.dl.sourceforge.net"
)

for mirr in ${mirrors[*]}
do
	url="${mirr}/project/mingw/MinGW/MinGW-README?viasf=1"
	# echo "$mirr"
	echo "==> test $url"
	curl -sI --connect-timeout 3 "${url}"
done
