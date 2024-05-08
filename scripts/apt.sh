#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-10-21 22:18:25
 # @LastEditTime: 2023-04-10 22:27:19
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/apt.sh
### 

# format deb url version repo
# echo 'http://us.archive.ubuntu.com/ubuntu/ cosmic main restricted universe multiverse'
# APT_REPO='http://us.archive.ubuntu.com/ubuntu/ cosmic main restricted universe multiverse'
APT_REPO='deb http://security.ubuntu.com/ubuntu/ focal-security main restricted'

ARCH=''
if [[ -n "$(command -v dpkg)" ]]; then
	ARCH=$(dpkg --print-architecture)
elif [[ -n "$(command -v getconf)" ]]; then
	OS_BIT=$(getconf LONG_BIT)
	if [[ "${OS_BIT}" == '64' ]]; then
		ARCH='amd64'
	else
		ARCH='i386'
	fi
elif [[ -n "$(command -v uname)" ]]; then
	OS_BIT=$(uname -m)
	if [[ "${OS_BIT}" == 'x86_64' ]]; then
		ARCH='amd64'
	else
		ARCH='i386'
	fi

else
	ARCH='amd64'
fi

convert_apt_repo()
{
	repo=$1

	if [[ "$(echo $1 | grep '^deb')" ]]; then
		repo=$(echo $repo | sed 's/^deb //g')
	fi

	url=$(echo $repo | awk -F ' ' '{print $1}')
	oldurl=$(echo $repo | awk -F ' ' '{print $1}')
	if [[ "${url:0-1}" != '/' ]]; then
		url=$url"/"
	fi

	codename=$(echo $repo | awk -F ' ' '{print $2}')
	repo=$(echo $repo | sed "s#$oldurl#$url#g")
	tags=$(echo $repo | sed "s#$url##g")
	tags=$(echo $tags | sed "s#$codename##g")
	echo '==> Check Packages File'

	# add Packages or Package.gz Package.xz
	if [[ -z "${tags}" ]]; then
		fullurl=$url$codename
		echo $url$codename$(curl -sSL $fullurl"InRelease" | grep 'Packages$' | head -n 1 | awk -F ' ' '{print $3}')
	else
		for tag in $tags; do
			if [[ -n "$(curl -sSLI $url'dists/'$codename"/Release" | grep 'HTTP' | grep 200)" ]]; then
				echo $url'dists/'$codename"/InRelease"
				echo $url'dists/'$codename"/Release"
				echo $url'dists/'$codename"/Release.gpg"
			fi
			if [[ -n "$(curl -sSLI $url'dists/'$codename"/$tag/binary-$ARCH/Packages" | grep 'HTTP' | grep 200)" ]]; then
				echo $url'dists/'$codename"/$tag/binary-$ARCH/Packages"
			fi
			if [[ -n "$(curl -sSLI $url'dists/'$codename"/$tag/binary-$ARCH/Packages.gz" | grep 'HTTP' | grep 200)" ]]; then
				echo $url'dists/'$codename"/$tag/binary-$ARCH/Packages.gz"
			fi
			if [[ -n "$(curl -sSLI $url'dists/'$codename"/$tag/binary-$ARCH/Packages.xz" | grep 'HTTP' | grep 200)" ]]; then
				echo $url'dists/'$codename"/$tag/binary-$ARCH/Packages.xz"
			fi
		done
	fi
}

# convert_apt_repo "$APT_REPO"
# convert_apt_repo 'deb http://security.ubuntu.com/ubuntu/ focal-security main restricted'
# convert_apt_repo 'deb https://dl.winehq.org/wine-builds/ubuntu/ focal main'
# convert_apt_repo 'https://professional-packages.chinauos.com/desktop-professional eagle main contrib non-free'
# convert_apt_repo 'https://home-packages.chinauos.com/home plum main contrib non-free'
# convert_apt_repo 'https://pro-store-packages.uniontech.com/appstore eagle-pro appstore'
# convert_apt_repo 'https://com-store-packages.uniontech.com/appstore deepin appstore'
# convert_apt_repo 'http://dl.google.com/linux/chrome/deb/ stable main'
# convert_apt_repo 'https://download.sublimetext.com/ apt/stable/'
convert_apt_repo 'deb http://repo.aptly.info/ squeeze main'
# convert_apt_repo 'https://packages.microsoft.com/repos/code stable main'
# convert_apt_repo 'https://s3.amazonaws.com/repo.deb.cyberduck.io stable main'
# convert_apt_repo 'http://download3.navicat.com/monitor2-download/ ubuntu-repo/'