#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2022-07-11 00:17:46
 # @LastEditTime: 2023-04-10 22:41:20
 # @LastEditors: Cloudflying
 # @Description: Build Debian Package
### 

ROOT_PATH=$(dirname $(realpath $0))
DEB_PATH="${ROOT_PATH}/repo/deb"

_deps()
{
	if [[ -z "$(command -v wget)" ]]; then
		apt install -y ca-certificates curl wget git zstd unrar unzip file tree subversion dpkg-dev debmake rpm rpm2cpio
	fi
}

_deps

# 获取软件源
_fetch()
{
	if [[ -n "${1}" ]] ; then
		if [[ "$(echo ${1:0:3})" == 'git' ]] || [[ "$(echo ${1:0:3})" == 'url' ]] || [[ "$(echo ${1:0:3})" == 'svn' ]] ; then
			TYPE=$(echo $1 | awk -F ':' '{print $1}')
			URL=$(echo $1 | awk -F "${TYPE}:" '{print $2}')
		fi
	fi

	if [[ -z "${URL}" ]] || [[ -z "${TYPE}" ]] ; then
		echo "PKGBUILD source variable error"
		exit 1
	fi

	if [[ "${TYPE}" == "url" ]]; then
		echo "Fetch ${name}-${version} Source "
		if [[ -n "$(command -v wget)" ]]; then
			# wget -qc ${URL}
			wget -qc ${URL}
		fi
	elif [[ "${TYPE}" == "git" ]]; then
		echo "Fetch ${name}-${version} Source "
		git clone --depth 1 ${URL}
	elif [[ "${TYPE}" == "svn" ]]; then
		echo "Fetch ${name}-${version} Source "
		svn checkout ${URL}
	fi
}

_extra()
{
	if [ -z "${2}"];then
		local name=$1
	else
		local name=$2
	fi

	echo "==> Extract Archive ${name} . . ."

	case "$name" in
		*.deb)
			dpkg-deb -x ${name} rootfs/
		;;
		*.tar.gz)
			tar -zxf $name
			;;
		*.tar.bz)
			tar -jxf $name
			;;
		*.tar.xz)
			tar -Jxf $name
			;;
		*.tar.zst)
			tar -I zstd -xvf $name
			;;
		*.tar)
			tar -xf $name
			;;
		*.zip)
			unzip $name
			;;
		*.rar)
			echo "tar.gz"
			;;
		*) 
			echo "Unknow format archive"
		;;
	esac
	
}

_gen_debian_control()
{
	[ -n "${name}" ] && echo "Package: ${name}" > ${PREFIX}/DEBIAN/control
	# [ -n "${version}" ] && echo "Standards-Version: ${version}" >> ${PREFIX}/DEBIAN/control
	[ -n "${version}" ] && echo "Version: ${version}" >> ${PREFIX}/DEBIAN/control
	[ -n "${maintainer}" ] && echo "Maintainer: ${maintainer}" >> ${PREFIX}/DEBIAN/control
	[ -n "${section}" ] && echo "Section: ${section}" >> ${PREFIX}/DEBIAN/control
	[ -n "${depends}" ] && echo "Build-Depends: ${depends}" >> ${PREFIX}/DEBIAN/control
	# Debian x64 x86 架构
	# Debian all 在 Archlinux 转换为 any
	if [ -n "${arch}" ];then
		[ "${arch}" == "x86" ] && arch="amd64"
		[ "${arch}" == "x86_64" ] && arch="amd64"
		if [[ "${arch}" == 'all' ]] || [[ "${arch}" == 'amd64' ]] ; then
			echo "Architecture: ${arch}" >> ${PREFIX}/DEBIAN/control
		elif [[ "${arch}" != 'amd64' ]]; then
			echo "Unknow Architecture ${arch}"
			exit 1
		fi
	fi
	[ -n "${priority}" ] && echo "Priority: ${priority}" >> ${PREFIX}/DEBIAN/control
	[ -n "${license}" ] && echo "License: ${license}" >> ${PREFIX}/DEBIAN/control
	[ -n "${recommends}" ] && echo "Recommends: ${recommends}" >> ${PREFIX}/DEBIAN/control
	[ -n "${homepage}" ] && echo "Homepage: ${homepage}" >> ${PREFIX}/DEBIAN/control
	[ -n "${desc}" ] && echo "Description: ${desc}" >> ${PREFIX}/DEBIAN/control
	[ -n "${suggests}" ] && echo "Suggests: ${suggests}" >> ${PREFIX}/DEBIAN/control
}

_gen_debian_md5sum() {
	FULLPATH="/tmp/build/${name}-${version}/rootfs/"
	find ${FULLPATH} -type f -exec md5sum {} \; | grep -v DEBIAN | sed "s#${FULLPATH}##g" > ${PREFIX}/DEBIAN/md5sum
}

# 安装可执行文件
_bin()
{
	echo "==> Install Execute Binary . . ."
	bindir="/tmp/build/${name}-${version}/rootfs/usr/local/bin"
	mkdir -p ${bindir}
	if [[ -f ${1} ]]; then
		cp $1 ${bindir}/$2
	fi
	chmod +x ${bindir}/*
}

# 安装 man
# _man 1 apk 
_man()
{
	echo "==> Install Man Doc . . ."
	LEVEL=$1
	NAME=$2
	LANG=$3
	mandir="/tmp/build/${name}-${version}/rootfs/usr/share/man/"

	[ -z "${NAME}" ] && echo "Man Name Error" && exit 1

	if [[ -n "${LANG}" ]]; then
		mandir="${mandir}/${LANG}"
	fi

	if [[ -n "${LEVEL}" ]]; then
		mandir="${mandir}/man${LEVEL}"
	else
		mandir="${mandir}/man1"
	fi

	mkdir -p ${mandir}
	if [[ -f ${2} ]]; then
		cp $1 ${bindir}/$2
	fi
}

_package_debian()
{
	echo "==> Make Package . . ."
	dpkg-deb -b "/tmp/build/${name}-${version}/rootfs" ${DEB_PATH}/"${name}_${version}_${arch}.deb"
}

_build()
{
	if [[ -f "$2/PKGBUILD" ]]; then
		source "$2/PKGBUILD"
		# TMP_DIR=$(mktemp -d)
		TMP_DIR="/tmp/build/${name}-${version}"
		PREFIX="/tmp/build/${name}-${version}/rootfs"
		mkdir -p "${PREFIX}/DEBIAN"
		cd ${TMP_DIR}
		_fetch ${source}
		# 解析文件名称
		# url 类型获取文件名称 对于链接会跳转的不适用 仅用于直连和有后缀名称的 如 github release
		if [[ "${source:0:3}" == 'url' ]]; then
			FILENAME=$(echo ${source:4} | awk -F'/' '{print $NF}')
			_extra ${FILENAME}
		fi
		echo "==> Create Debian control . . ."
		_gen_debian_control
		echo "==> Create md5sum . . ."
		_gen_debian_md5sum
		echo "==> Building . . . "
		build
		echo "==> Packing . . . "
		_package_debian
		# rm -fr ${TMP_DIR}
	else
		echo "$2/PKGBUILD" Not Found
	fi
	# echo $@
}

# /dists/jammy/main/binary-amd64/Packages 及压缩的 xz bz2 lzma(lz2) lz4 zst
# echo "deb [trusted=yes] file:///data/repo/deb jammy main" > /etc/apt/sources.list.d/mkpkg.list
_gen_debian_repo()
{
	cd ${DEB_PATH}
	# local DB_PATH=${DEB_PATH}/dists/jammy/main/binary-amd64
	local DB_PATH=${DEB_PATH}/dists
	mkdir -p ${DB_PATH}

	sections=("jammy")
	components=("main")
	archs=("all amd64")

	for section in ${sections}
	do
		for comp in ${components}
		do
			for arch in ${archs}
			do
				local GEN_DB_PATH="${DB_PATH}/${section}/${comp}/binary-${arch}"
				mkdir -p ${GEN_DB_PATH}
				dpkg-scanpackages pool > ${GEN_DB_PATH}/Release
				dpkg-scanpackages pool > ${GEN_DB_PATH}/Packages
				dpkg-scansources  pool > ${GEN_DB_PATH}/Sources
				dpkg-scanpackages pool | gzip -c9 > ${GEN_DB_PATH}/Packages.gz
				dpkg-scansources pool  | gzip -9 > ${GEN_DB_PATH}/Sources.gz
			done
		done
	done
	


}

_usage()
{
	echo "Usage:

Options:
build 			Build Package, Usage: '$0 build "dirname"'
"
}

case "$1" in
	build|-b)
		_build $@
		;;
	extra|-e)
		_extra $@
	;;
	genrepo)
		_gen_debian_repo $@
	;;
	*)
		_usage
		;;
esac
