#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-09 17:11:53
 # @LastEditTime: 2023-10-21 19:14:26
 # @LastEditors: Cloudflying
 # @Description: 
### 
# pkgx Packages Build Tools

# deps
# debian apt-get install dpkg-dev

# CUR_DIR=$(dirname "(realpath $0)")
CUR_DIR=$(dirname $(realpath $0))

REPO_DIR="${CUR_DIR}/repo"

# debian ubuntu
# Components: main contrib non-free
# Architectures: i386 amd64 arm64 mips64el
# binary-arm64
# main/binary-i386/Packages
# main/binary-i386/Packages.gz
# main/binary-i386/Release
# contrib/source/Sources.gz

_depency()
{
	UBUNTU_DEPS='bzip2 xz-utils gnupg gpgv'
}

# alias
# _create_ubuntu_repo
# _create_apt_repo
# ./pkgx.sh repo create --platform=debian --name=apt --branch=bullseye --repo=main --arch=amd64
_create_apt_repo() {
	mkdir -p "${REPO_DIR}/${_PLATFORM}/${_NAME}/dists/${_BRANCH}/${_REPO}/binary-${_ARCH}"
	# mkdir -p "${REPO_DIR}/${_PLATFORM}/${_NAME}/dists/${_BRANCH}/binary-${_ARCH}"
	mkdir -p "${REPO_DIR}/${_PLATFORM}/${_NAME}/pool/${_REPO}"
	if [[ -d "${REPO_DIR}/${_PLATFORM}/${_NAME}/dists/${_BRANCH}/${_REPO}/binary-${_ARCH}" ]]; then
		echo "create repo: ${_NAME}:${_BRANCH}:${_ARCH} success"
	else
		echo "create repo: ${_NAME}:${_BRANCH}:${_ARCH} fail"
	fi
}

_create_alpine_repo() { echo ''; }
_create_brew_repo() { echo ''; }
_create_archlinux_repo() { echo ''; }

# Debian
_build_apt_repo()
{
	echo 'Build'
	# cd "${REPO_DIR}/${_PLATFORM}/${_NAME}/pool/${_REPO}"
	cd "${REPO_DIR}/${_PLATFORM}/${_NAME}"
	# dpkg-scanpackages -m . | gzip -c9 > Packages.gz
	dpkg-scanpackages -m pool/${_REPO} > dists/${_BRANCH}/${_REPO}/binary-${_ARCH}/Packages
	gzip -9c dists/${_BRANCH}/${_REPO}/binary-${_ARCH}/Packages > dists/${_BRANCH}/${_REPO}/binary-${_ARCH}/Packages.gz
	# gzip -9c dists/jessie/$cc/binary-$arch/Packages > dists/jessie/$cc/binary-$arch/Packages.gz
}

# macOS Brew
# all in one
_build_brew_repo()
{
	mkdir -p ${REPO_DIR}/brew
}

# Ubuntu
_build_ubuntu_repo()
{
	mkdir -p ${REPO_DIR}/ubuntu
}

# Ubuntu
_build_centos_repo()
{
	mkdir -p ${REPO_DIR}/centos
}

# Alpine Linux
# alpine/v3.12 edge ...
_build_alpine_repo()
{
	mkdir -p ${REPO_DIR}/alpine
}

_build_repo()
{
	if [[ "$(command -v "_build_$1_repo")" ]]; then
		"_build_$1_repo"
	else
		echo "Unknow Platform"
	fi
}

# Archlinux
# all in one
_build_arch_repo()
{
	echo "Archlinux"
}

_build_debian_pkgs()
{
	echo ''
}

_build_arch_pkgs()
{
	# 构建软件包
	# 如果需要的依赖不满足，构建失败可执行  makepkg -s 自动安装依赖
	# 或者makepkg -S pkgname  手动安装依赖
	# makepkg -i 可安装构建的软件包
	# makepkg --clean --log --syncdeps --skippgpcheck --noconfirm
	makepkg --syncdeps --skippgpcheck --noconfirm
	namcap pkgname  #检测依赖情况 pkgname是软件包的名字
	pacman -U pkgname    #安装软件包
	#  写在  PKGBUILD
	install -Dm644 LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE"

	updpkgsums     #生成校验码
	makepkg --printsrcinfo > .SRCINFO     #生成源文件信息文件
}

fetch_latest_aur_repo()
{
	
}

_usage()
{
	echo -e "Usage: debian|ubuntu|centos|alpine|arch|brew"
}

for opt in $@
do
	case "$opt" in
		repo|mirror)
			_TYPE=$opt
			;;
		update-aur-repo)
			_fetch_latest_aur_repo
			;;
		create|build|del|rename)
			_OPERATION=$2
			;;
		--platform*|-p*) 
			_PLATFORM=$(echo $opt | awk -F '=' '{print $2}')
			[[ "${_PLATFORM}" == "debian" || "${_PLATFORM}" == "ubuntu" && "${_PLATFORM}" == "apt" ]] && _PLATFORM="apt"
			;;
		--arch*|-a*)
			_ARCH=$(echo $opt | awk -F '=' '{print $2}')
			;;
		# Ubuntu
		# xenial trusty jammy impish hirsute groovy focal
		# Debian
		# bullseye buster jessie stretch
		--name*|-n*) 
			_NAME=$(echo $opt | awk -F '=' '{print $2}')
			;;
		--branch*|-b*) 
			_BRANCH=$(echo $opt | awk -F '=' '{print $2}')
			;;
		# main non-free cocontrib multiverse restricted universe
		--repo*|-r*) 
			_REPO=$(echo $opt | awk -F '=' '{print $2}')
			;;
		*)
			echo "Unknown option '${opt}'
Usage $0 repo|mirror create|del|rename --platform=debian(ubuntu alpine brew archlinux) --name=apt --branch=xenial --repo=main
"
		;;
	esac
done

_METHOD="_${_OPERATION}_${_PLATFORM}_${_TYPE}"

if [[ -n "$(command -v $_METHOD)" ]]; then
	$_METHOD
else
	echo "unknow option ${_METHOD}"
	exit 1
fi

exit

			case "${_PLATFORM}" in
				debian|ubuntu|apt)
					_create_debian_repo $@
					;;
				arch*)
					_create_archlinux_repo $@
					;;
				alpine*)
					_create_alpine_repo $@
					;;
				brew*|mac*)
					_create_brew_repo $@
					;;
				*) 
					echo "Unknow Platform $_PLATFORM"
				;;
			esac