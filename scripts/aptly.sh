#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-10 06:16:57
 # @LastEditTime: 2021-12-10 21:14:34
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/aptly.sh
### 

# MIRRORS='https://repo.huaweicloud.com'
# MIRRORS='http://mirrors.ustc.edu.cn'
# MIRRORS='https://mirrors.tuna.tsinghua.edu.cn'
# MIRRORS='https://mirrors.tencent.com'
MIRRORS='https://mirrors.aliyun.com'
GPG_KEY='B9A3E57D527453DD'

REPO='boxs'
# gpg --list-secret-keys --keyid-format=long | grep sec | awk -F ' ' '{print $2}' | awk -F '/' '{print $2}'
# gpg --no-default-keyring --keyring trustedkeys.gpg --keyserver pool.sks-keyservers.net --recv-keys keyid
# gpg --no-default-keyring -a --export | gpg --no-default-keyring --keyring ~/.gnupg/trustedkeys.gpg --import -
# gpg --no-default-keyring --keyring /usr/share/keyrings/debian-archive-keyring.gpg --export | gpg --no-default-keyring --keyring trustedkeys.gpg --import
# gpg --keyring /usr/share/keyrings/debian-archive-keyring.gpg  --export | gpg --no-default-keyring --keyring ~/.gnupg/trustedkeys.gpg --import
# curl -sL https://some.repo/repository/Release.key | gpg --no-default-keyring --keyring trustedkeys.gpg --import

# all, amd64, arm64, armel, armhf, i386, mips64el, mipsel, ppc64el, s390x
# -architectures="amd64"
# main contrib non-free
# Components 
# -distribution='bullseye'
# ./bin/aptly_darwin mirror create -filter="nginx" -filter-with-deps wheezy-required ${MIRRORS}/debian/ bullseye main
# ./bin/aptly_linux mirror create -filter="nginx" -filter-with-deps bullseye-required ${MIRRORS}/debian/ bullseye main
# ./bin/aptly_linux -filter="nginx" -filter-with-deps mirror create nginxs ${MIRRORS}/debian/ bullseye main
# aptly repo create -architectures="amd64" -comment="debian bullseye repo" -component="main" -distribution="bullseye" bullseye
# aptly repo add --remove-files --force-replace bullseye *.deb
# aptly snapshot create fbullseye from repo bullseye
# aptly publish snapshot --batch --passphrase="Mo0nlightLy!ngFrontOfBed" bullseye
# aptly publish repo -acquire-by-hash -architectures="amd64" -component="main" -distribution="bullseye" -gpg-key="${GPG_KEY}" --batch --passphrase="Boxs287033." boxs
# aptly publish snapshot -acquire-by-hash -architectures="amd64" -component="main" -distribution="bullseye" -force-overwrite -gpg-key="${GPG_KEY}" --batch --passphrase="Boxs287033." boxs
# aptly publish snapshot boxs debian
# aptly publish repo <name> [[<endpoint>:]<prefix>]
# aptly publish repo {name} {distribution} {components}
# ~/.aptly/public/{name}/dists/{distribution}/{components}/
# aptly publish update <distribution> [[<endpoint>:]<prefix>]
# aptly publish update bullseye debian
# aptly publish update bionic ubuntu

aptly publish -component="main" -architectures="amd64" -distribution="bionic" repo boxs ubuntu
aptly publish -component="main" -architectures="amd64" -distribution="xenial" repo boxs ubuntu

# use
# apt-key adv --keyserver pool.sks-keyservers.net --recv-keys ED75B5A4483DA07C
# curl http://<server_ip>:8080/pubkey.txt | sudo apt-key add -
# deb http://<server_ip>:8080/ my-basic main
# echo "deb [arch=amd64] http://mirrors.bwbot.org/ stable main" > /etc/apt/sources.list.d/systemback.list
# apt update -y
# apt install {pkg}

# aptly publish snapshot <name> [[<endpoint>:]<prefix>]
# aptly publish snapshot boxs ubuntu
# deb http://your-server/{prefix}/ {distribution} {components}
# deb http://your-server/ubuntu/ bullseye main

# aptly publish drop <distribution> [[<endpoint>:]<prefix>]

# aptly publish drop bullseye main
# ~/.aptly/public/debian/dists
# aptly publish drop bullseye ubuntu
# ~/.aptly/public/ubuntu

_create_mirror()
{
    # curl -sL https://archive.kali.org/archive-key.asc | apt-key add -
    # curl -sL https://archive.kali.org/archive-key.asc | gpg --import -
    # ~/.gnupg/gpg.conf
    # gpg2
    # ~/.gnupg/dirmngr.conf
    # keyserver hkps://pgp.ustc.edu.cn
    # gpgconf --reload dirmngr
    # key server
    # hkp://ipv4.pool.sks-keyservers.net
    # hkp://keyserver.pgp.com
    # keyserver.ubuntu.com
    # keyring.debian.org
    # keys.openpgp.org
    # pgp.ustc.edu.cn
    # subkeys.pgp.net
    # pgp.mit.edu
    # pool.sks-keyservers.net
    # www.gpg-keyserver.de
    # apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv-keys 7D8D0BF6
    aptly mirror create -architectures='amd64' -ignore-signatures nginx https://mirrors.ustc.edu.cn/kali/ kali-rolling main contrib non-free
    aptly mirror create -architectures='amd64' -filter='nginx' -filter-with-deps -dep-follow-recommends -dep-follow-suggests -dep-verbose-resolve -ignore-signatures nginx https://mirrors.ustc.edu.cn/kali/ kali-rolling main contrib non-free
    aptly mirror edit -architectures='amd64' -filter='nginx vim' -filter-with-deps -dep-follow-recommends -dep-follow-suggests -dep-verbose-resolve -ignore-signatures kali
}

_set_mirror()
{
    aptly mirror edit -architectures='amd64' -filter='nginx' -filter-with-deps -dep-follow-recommends -dep-follow-suggests -dep-verbose-resolve nginx
}