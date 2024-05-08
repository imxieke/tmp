#!/usr/bin/env bash
#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-11-18 18:11:05
 # @LastEditTime: 2021-11-19 00:28:58
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/parse-repo-file/get-repo-files.sh
### 

if [[ ! -f "alpine-edge-main.tar.gz" ]]; then
	wget https://mirrors.ustc.edu.cn/alpine/edge/main/x86_64/APKINDEX.tar.gz -O alpine-edge-main.tar.gz
fi

# testing repo only for edge
_alpine()
{
	# Repo File Format: http://mirrors.ustc.edu.cn/alpine/v3.9/community/aarch64/APKINDEX.tar.gz
	branchs='edge 3.0 3.1 3.2 3.3 3.4 3.5 3.6 3.7 3.8 3.9 3.10 3.11 3.12 3.13 3.14 3.16'
	repos='main community '
	edge_repos='testing'
	# not for all version and repo
	# archs='all aarch64 armhf armv7 mips64 ppc64le riscv64 s390x x86 x86_64'
	archs='all aarch64 armhf armv7 x86 x86_64'
}

# http://mirrors.ustc.edu.cn/ubuntu/dists/bionic/main/binary-amd64/Packages.gz
# http://mirrors.ustc.edu.cn/ubuntu/dists/bionic/main/binary-i386/Packages.gz
# http://mirrors.ustc.edu.cn/ubuntu/dists/bionic/main/source/Sources.gz
_ubuntu()
{
	branchs=''
	repos='main multiverse restricted universe'
	archive='bionic bionic-backports bionic-proposed bionic-security bionic-updates devel devel-backports devel-proposed devel-security devel-updates focal focal-backports focal-proposed focal-security focal-updates groovy groovy-backports groovy-proposed groovy-security groovy-updates hirsute hirsute-backports hirsute-proposed hirsute-security hirsute-updates impish impish-backports impish-proposed impish-security impish-updates jammy jammy-backports jammy-proposed jammy-security jammy-updates trusty trusty-backports trusty-proposed trusty-security trusty-updates xenial xenial-backports xenial-proposed xenial-security xenial-updates'
	arch='amd64 i386'
}

# debian 类系统通用
# Linux Distrbution
# kali ubuntu debian deepin trisquel
# Third-Party Packages Repository
# ubuntu-ports no x86 x86_64
# ubuntu-ports
# http://mirrors.ustc.edu.cn/anthon/debs/
_debian_like()
{
	url=$1
	if [[ -z $url ]]; then
		echo 'url is null'
		exit 1
	fi

	# 若没有 / 阿里云页面会跳转
	url="${url}/dists/"
	url=$(echo ${url} | sed 's#\/\/#/#g')
	archive=$(curl -sL ${url} | grep 'href' | awk -F '"' '{print $2}' | grep -v '\.\.' | grep '/$' | awk -F '\/' '{print $1}')
	# archive=$(curl -sL ${url} | grep 'href' | awk -F '"' '{print $2}' | grep -v '\.\.' | grep '/$')
	arch=$(curl -sL https://mirrors.aliyun.com/debian/dists/Debian10.11/main/ | grep binary | awk -F '"' '{print $2}' | awk -F '\/' '{print $1}' | awk -F '-' '{print $2}')
	# Ubuntu debian kali
	common_repos='main contrib non-free'
	# echo $archive
	for i in $archive
	do
		repos=$(curl -sL ${url}${i}/ | grep href | grep -v '\.\.' | grep -v gz | grep -v gpg | grep -v by-hash | grep -v Release | grep -v ChangeLog | awk -F '"' '{print $2}' | awk -F '\/' '{print $1}')
		for repo in $repos
		do
			archs="$(curl -sL ${url}$i/${repo}/ | grep binary | awk -F '"' '{print $2}' | awk -F '\/' '{print $1}' | awk -F '-' '{print $2}')"
			echo "$i -> $repo support: " $archs
		done
	done
	
}

# _debian_like $@

_archlinux()
{
	$file='tmp/files/neofetch-7.1.0-2/desc';
	$info = file_get_contents($file);
	echo $file;
}

_archlinux