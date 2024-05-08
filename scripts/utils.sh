#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-10 05:00:59
 # @LastEditTime: 2023-10-21 19:17:52
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/utils.sh
### 

REPO_PATH='repo'
REPO_NAME='repo'
# cd ${REPO_PATH}

# repo-add ${REPO_NAME}.db.tar.gz *.tar.zst

CORES=$(grep -c processor /proc/cpuinfo)
MAKEFLAGS="-j$(expr ${CORES}  \* 2)"
MAINTAINER="Cloudflying <oss@live.hks>"
GPGKEY='2F3B7D030422198DB4197E3BE5394FD185C7B727'

GPG_NAME='Boxs Packages'
GPG_COMMENT='Boxs Packages'
GPG_EMAIL='oss@live.hk'
GPG_PASSPHRASE='Boxs287033.'

_set_makepkg()
{
	sed -i "s/#PACKAGER=.*/PACKAGER=\"${MAINTAINER}\"/g" /etc/makepkg.conf
	sed -i "s/PACKAGER=.*/PACKAGER=\"${MAINTAINER}\"/g" /etc/makepkg.conf
	
	sed -i "s/#MAKEFLAGS=.*/MAKEFLAGS=\"${MAKEFLAGS}\"/g" /etc/makepkg.conf
	sed -i "s/MAKEFLAGS=.*/MAKEFLAGS=\"${MAKEFLAGS}\"/g" /etc/makepkg.conf

	sed -i "s/#GPGKEY=.*/GPGKEY=\"${GPGKEY}\"/g" /etc/makepkg.conf
	sed -i "s/GPGKEY=.*/GPGKEY=\"${GPGKEY}\"/g" /etc/makepkg.conf
}

# _set_makepkg

_gpg()
{
	# /usr/share/pacman/
	pacman-key --init
	gpg --keyserver pgp.mit.edu --recv-keys F7E48EDB
	gpg --recv-key 0A11B61D3657B901
	gpg --lsign 0A11B61D3657B901
	pacman-key --init
	pacman-key --populate archlinux
	pacman-key --refresh-keys
	pacman-key --refresh --keyserver hkp://pgp.ustc.edu.cn
	pacman-key --refresh --keyserver hkp://pgp.ustc.edu.cn
	pacman-key --updatedb
	pacman-key --add /path/to/file
	# 本地导入 asc
	pacman-key --add /path/to/your_public_key.asc
	pacman-key --finger KEY_ID
	pacman-key --lsign-key KEY_ID
}

_backup_gpg()
{
	# gpg --list-secret-keys --keyid-format=long
	# gpg --list-secret-keys --keyid-format=long
	# get keyid
	# gpg --list-secret-keys --keyid-format=long | grep sec | awk -F ' ' '{print $2}' | awk -F '/' '{print $2}'
	# gpg --keyserver keyserver.ubuntu.com --send-key {key}
	gpg --armor --export --output conf/gpg/$(hostname)-armor.pub
	gpg --export --output conf/gpg/$(hostname).gpg
	gpg --armor --export-secret-key --output conf/gpg/$(hostname)-secret-armor.gpg
	gpg --export-secret-key --output conf/gpg/$(hostname)-secret.gpg
	cp -fr ~/.gnupg/ conf/gpg/$(hostname)
}

_sign_pkg()
{
	cd ${REPO_PATH}	
	PKG_LISTS=$(ls *.tar.zst)
	rm -fr *.sig *.asc
	for pkg in $(ls *.tar.zst *.tar.gz ); do
		# echo ${pkg}
		gpg --sign --force-sign-key --detach-sign ${pkg}
	done
}

_sign_pkg

get_github_api_latest()
{
    version=v2.1.2-1-g
    echo $version
    version=${version/#v/}
    echo $version
    version=${version/-/+git}
    echo $version
    version=${version/-g/+}
    echo $version

    dir=`pwd`
    from=${1:-"$dir"/../packages}
    # echo $from

    PROJECT="iterative/dvc"
    GHAPI_URL="https://api.github.com/repos/$PROJECT/releases/latest"
    LATEST=$(curl --silent $GHAPI_URL | jq -r .tag_name)
    echo $LATEST
}

# 解析 deb 系仓库
parse_deb()
{
	url=$1
	if [[ -n "$url" ]]; then
		repos=$(curl -sL "${url}/dists" | grep 'href' | grep -v '\.\.\/' | awk -F '"' '{print "@"$2"@"}' | grep '/@' | sed 's#/##g' | tr '\n' ' ' | tr '@' '"')
		echo $repos
	fi
}

# 获取 Github Release 最新版本
get_github_latest_version()
{
    [ -z ${1} ] && echo 'url not found ' && exit 1
    URL=$1"/releases/latest"
    LATEST_VERSION=$(curl ${URL} | grep -Eo "https://github.com\S+" | awk -F '/tag/' '{print $2}')
}


apt install -y --no-install-recommends gnupg curl wget ca-certificates dirmngr file dpkg-dev zsh git

git clone --depth 1 https://e.coding.net/pkgs/oh-my-zsh/oh-my-zsh.git ~/.oh-my-zsh
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
sed -i "s#ZSH_THEME=.*#ZSH_THEME='strug'#g" ~/.zshrc


# gpg --no-default-keyring --keyring /usr/share/keyrings/debian-archive-keyring.gpg --export | gpg --no-default-keyring --keyring trustedkeys.gpg --import