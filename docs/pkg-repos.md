### Keyring
- blackarch F9A6E68A711354D84A9B91637533BAFE69A25079

## deepin uos ubuntukylin 的商业程序

https://mirrors.aliyun.com/ubuntukylin/pool/partner/

https://packages.azlux.fr/
https://packages.azlux.fr/scripts/

```
$ pacman-key --recv-keys 7931B6D628C8D3BA
$ pacman-key --finger 7931B6D628C8D3BA
$ pacman-key --lsign-key 7931B6D628C8D3BA
```

[arch4edu]
SigLevel = Never
Server = https://mirrors.aliyun.com/arch4edu/$arch

[archstrike]
SigLevel = Never
Server = https://mirrors.aliyun.com/archstrike/x86_64/$repo

[system]
SigLevel = Never
Server = https://mirrors.aliyun.com/artixlinux/$repo/os/$arch/

[world]
SigLevel = Never
Server = https://mirrors.aliyun.com/artixlinux/$repo/os/$arch/

[lib32]
SigLevel = Never
Server = https://mirrors.aliyun.com/artixlinux/$repo/os/$arch/

[galaxy]
SigLevel = Never
Server = https://mirrors.aliyun.com/artixlinux/$repo/os/$arch/

[blackarch]
Server = https://mirrors.aliyun.com/blackarch/$repo/os/$arch

https://repo.parabola.nu/
https://repo.parabola.nu/extra/os/x86_64/
https://repo.parabola.nu/kde-unstable/os/x86_64/
https://repo.parabola.nu/libre/os/x86_64/
https://repo.parabola.nu/multilib/os/x86_64/
https://repo.parabola.nu/multilib-testing/os/x86_64/
https://repo.parabola.nu/nonprism/os/x86_64/
https://repo.parabola.nu/nonsystemd/os/x86_64/
https://repo.parabola.nu/pcr/os/x86_64/
https://repo.parabola.nu/community/os/x86_64/
https://repo.parabola.nu/community-staging/os/x86_64/
https://repo.parabola.nu/community-testing/os/x86_64/
https://repo.parabola.nu/core/os/x86_64/
https://repo.parabola.nu/staging/os/x86_64/

https://download.opensuse.org/repositories/Emulators:/Wine/openSUSE_Tumbleweed/x86_64/

# Debian && Ubuntu Person Package Repo
- Build your self Ubuntu & Debian Person Package Repo, not offcial repo mirror
echo "deb [trusted=yes] file:///media/psf/Home/Code/Project/packages/deb/build/apps/dl ./" | tee -a /etc/apt/sources.list.d/apps.list

debhelper

https://search.apps.ubuntu.com/api/v1/package/firefox
curl -s -H 'Snap-Device-Series: 16' http://api.snapcraft.io/v2/snaps/info/nvim
curl -H 'X-Ubuntu-Series: 16' 'https://api.snapcraft.io/api/v1/snaps/details/core' | jq '.download_url' -r

## Packages
- cowsay
- fortune

## Centos
- Extra Packages for Enterprise Linux
- https://mirrors.aliyun.com/epel/

## OS Repository

### Debian
- http://archive.kali.org/
- https://mirrors.aliyun.com/debian/
- https://deb.debian.org/debian-debug/
- https://deb.debian.org/debian-ports/
- https://mirrors.aliyun.com/debian-archive/
- https://mirrors.aliyun.com/debian-security/
- https://mirrors.aliyun.com/debian-backports/
- https://mirrors.aliyun.com/debian-multimedia/
- https://mirrors.aliyun.com/ubuntu/
- https://mirrors.aliyun.com/oldubuntu-releases/ubuntu/
- https://mirrors.aliyun.com/kali/
- https://mirrors.aliyun.com/deepin/
- https://community-packages.deepin.com/deepin/
- https://community-store-packages.deepin.com/appstore
- https://uos.deepin.cn/uos/
- https://mirrors.aliyun.com/bjlx/
- https://mirrors.aliyun.com/ubuntukylin/
- https://mirrors.aliyun.com/linuxmint-packages/
- https://mirrors.aliyun.com/neurodebian/
- https://mirrors.aliyun.com/trisquel/
- https://mirrors.aliyun.com/osmc/
- https://mirrors.aliyun.com/ros/

### Centos
- https://mirrors.aliyun.com/centos/
- https://mirrors.aliyun.com/fedora/
- https://mirrors.aliyun.com/repoforge/
- https://mirrors.aliyun.com/rpmfusion/
- https://mirrors.ustc.edu.cn/rpmfusion/
- https://mirrors.aliyun.com/scientificlinux/
- https://mirrors.aliyun.com/remi/
- https://mirrors.aliyun.com/fedora-altarch/
- https://mirrors.aliyun.com/centos-altarch/
- https://mirrors.aliyun.com/fedora-alt/
- https://mirrors.aliyun.com/almalinux/
- https://mirrors.aliyun.com/kicad/
- https://mirrors.aliyun.com/blender/
- https://mirrors.aliyun.com/centos-stream/
- https://mirrors.aliyun.com/rockylinux/
- https://mirrors.aliyun.com/openeuler/
- https://mirrors.aliyun.com/alinux/
- https://mirrors.aliyun.com/anolis/
- https://mirrors.kernel.org/mageia/distrib/8/x86_64/media/
- https://mirrors.aliyun.com/elrepo/
- https://mirrors.aliyun.com/ovirt/

#### old
- https://mirrors.aliyun.com/ius/

### gentoo
- https://mirrors.aliyun.com/gentoo/
- https://mirrors.aliyun.com/sabayonlinux/
- https://mirrors.aliyun.com/gentoo-portage/

### Opensuse
- https://mirrors.aliyun.com/opensuse/
- http://mirrors.aliyun.com/packman/

- https://mirrors.aliyun.com/mxlinux/
- https://mirrors.aliyun.com/slackware/
- https://mirrors.aliyun.com/alpine/
- https://www.charlesproxy.com/packages/apt/
- https://www.charlesproxy.com/packages/yum/
- https://mirrors.aliyun.com/artixlinux/
- https://mirrors.aliyun.com/anthon/
- https://mirrors.aliyun.com/ceph/

### macos
- https://mirrors.aliyun.com/macports/packages/

## Third-Party Package Repository
- https://mirrors.aliyun.com/homebrew/
- https://mirrors.aliyun.com/puppet/

## BSD
- https://mirrors.aliyun.com/pub/OpenBSD/7.0/packages/amd64/

## Archlinux
- https://mirrors.aliyun.com/archlinux/
- https://mirrors.aliyun.com/archlinuxcn/
- https://mirrors.aliyun.com/blackarch/blackarch/
- http://mirrors.aliyun.com/manjaro/
- http://mirrors.aliyun.com/chakra/
- https://mirrors.aliyun.com/arch4edu/
- https://mirrors.aliyun.com/KaOS/
- https://mirrors.aliyun.com/archstrike/

## Arm
- https://mirrors.aliyun.com/archlinuxarm/
- https://mirrors.aliyun.com/raspbian/
- https://mirrors.aliyun.com/ubuntu-ports/
- https://mirrors.aliyun.com/raspberrypi/
- https://mirrors.aliyun.com/slackwarearm/

## Software Repo
- https://mirrors.aliyun.com/zabbix/zabbix/
- https://mirrors.aliyun.com/kubernetes/
- https://mirrors.aliyun.com/jenkins/
- https://mirrors.aliyun.com/mongodb/
- https://packages.microsoft.com/
- https://mirrors.aliyun.com/dotdeb/
- https://mirrors.aliyun.com/docker-ce/
- https://mirrors.aliyun.com/mariadb/
- https://mirrors.aliyun.com/mysql/
- https://mirrors.aliyun.com/anaconda/pkgs/
- https://mirrors.aliyun.com/ros2/
- https://mirrors.aliyun.com/elasticstack/
- https://mirrors.aliyun.com/nvidia-machine-learning/
- https://mirrors.aliyun.com/nvidia-cuda/
- https://mirrors.aliyun.com/oceanbase/
- https://mirrors.aliyun.com/saltstack/
- https://mirrors.aliyun.com/postgresql/
- https://mirrors.aliyun.com/parrot/
- https://mirrors.aliyun.com/nodejs-release/
- https://mirrors.aliyun.com/puppy/
- https://mirrors.aliyun.com/sagemath/index.html
- https://mirrors.aliyun.com/videolan/
- https://mirrors.aliyun.com/libreoffice/
- https://mirrors.aliyun.com/gimp/
- https://mirrors.aliyun.com/exim/
- https://www.openoffice.org/download/
- https://packages.cloud.google.com/
- https://pkg.jenkins.io/

## keybase
- http://prerelease.keybase.io.s3.amazonaws.com/update-darwin-prod-v2.json
- http://prerelease.keybase.io.s3.amazonaws.com/update-linux-prod.json
- http://prerelease.keybase.io.s3.amazonaws.com/update-windows-prod-v2.json
- https://prerelease.keybase.io/
- https://prerelease.keybase.io/keybase_amd64.deb
- https://prerelease.keybase.io/keybase_i386.deb
- https://prerelease.keybase.io/Keybase.dmg
- https://prerelease.keybase.io/keybase_amd64.rpm
- https://prerelease.keybase.io/keybase_i386.rpm
- https://prerelease.keybase.io/keybase_setup_amd64.msi

deb https://community-packages.deepin.com/deepin/ apricot main contrib non-free
#deb-src https://community-packages.deepin.com/deepin/ apricot main contrib non-free
deb https://community-store-packages.deepin.com/appstore eagle appstore
deb https://community-packages.deepin.com/printer eagle non-free

- 商业程序
deb http://archive.ubuntukylin.com/ubuntukylin focal-partner main


http://dl.google.com/linux/chrome/deb  stable
https://repositorio.deepines.com/appstore/pool/appstore/
http://repository.spotify.com  stable/non-free amd64

deb https://home-packages.chinauos.com/home plum main contrib non-free
deb https://home-packages.chinauos.com/home plum/beta main contrib non-free
deb https://home-packages.chinauos.com/home plum main contrib non-free
deb https://home-packages.chinauos.com/home plum/beta main contrib non-free
deb https://home-packages.chinauos.com/home plum main contrib non-free
deb https://home-packages.chinauos.com/home plum/beta main contrib non-free

401
deb https://professional-packages.chinauos.com/desktop-professional eagle main contrib non-free
deb https://professional-packages.chinauos.com/printer eagle non-free
deb https://pro-store-packages.uniontech.com/appstore eagle-pro appstore

pro-store-packages.uniontech.com/appstore/dists/eagle-pro/InRelease
## Deepin
deb https://community-packages.deepin.com/deepin/ apricot main contrib non-free
deb https://com-store-packages.uniontech.com/appstore deepin appstore

deb [trusted=yes] https://dvc.org/deb/ stable main
deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main
deb https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib
deb-src https://mirrors.ustc.edu.cn/kali kali-rolling main non-free contrib

deb https://mirrors.tuna.tsinghua.edu.cn/linuxmint ulyssa main upstream import backport

deb http://mirrors.huaweicloud.com/ubuntu focal main restricted universe multiverse
deb http://mirrors.huaweicloud.com/ubuntu focal-updates main restricted universe multiverse
deb http://mirrors.huaweicloud.com/ubuntu focal-backports main restricted universe multiverse

# deb http://security.ubuntu.com/ubuntu/ focal-security main restricted universe multiverse
# deb http://archive.canonical.com/ubuntu/ focal partner

deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free
# deb-src http://mirrors.ustc.edu.cn/debian stable main contrib non-free
deb http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free
# deb-src http://mirrors.ustc.edu.cn/debian stable-updates main contrib non-free

# deb http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free
# deb-src http://mirrors.ustc.edu.cn/debian stable-proposed-updates main contrib non-free

deb http://mirrors.ustc.edu.cn/debian-security/ stable/updates main non-free contrib
# deb-src http://mirrors.ustc.edu.cn/debian-security/ stable/updates main non-free contrib

deb https://repo.debiancn.org/ testing main

deb http://mirrors.ustc.edu.cn/deb-multimedia/ jessie main non-free
# deb-src http://mirrors.ustc.edu.cn/deb-multimedia/ jessie main non-free
deb http://mirrors.ustc.edu.cn/deb-multimedia/ jessie-backports main
# deb-src http://mirrors.ustc.edu.cn/deb-multimedia/ jessie-backports main

deb https://mirrors.ustc.edu.cn/linuxmint/ tara main upstream import backport
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ bionic-security main restricted universe multiverse
deb http://archive.canonical.com/ubuntu/ bionic partner

# 默认注释了源码仓库，如有需要可自行取消注释
deb https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial main main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-updates main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-backports main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-security main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-proposed main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu-ports/ xenial-proposed main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ros/ubuntu $(lsb_release -sc) main
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

- https://classic.yarnpkg.com/en/docs/nightly
- flathub snapcraft appImage

packages.deepin.com

https://dl.bintray.com/jetbrains/intellij-jbr/
https://github.com/sky-aw/fetchpac
https://github.com/dylanaraps/neofetch
https://github.com/TheCynicalTeam/pyfetch
https://github.com/KittyKatt/screenFetch
https://github.com/countstarlight/deepin-wine-tim-arch
https://pinyin.sogou.com/linux/
https://music.163.com/#/download
https://im.qq.com/linuxqq/download.html
https://www.wps.com/linux
https://linux.wps.cn/
https://github.com/nashaofu/dingtalk
https://github.com/Hackerl/Wine_Appimage
https://github.com/askme765cs/Wine-QQ-TIM


https://github.com/mikkeloscar
- shadowsocks-qt5
- tim
- utorrent
- wiznote
- xdm
- sublime-text_build-3211_amd64.deb
360zip_1.0.0.1010_amd64.deb
360safe_1.0.0.1014_amd64.deb
Motrix_1.6.11_amd64.deb
crossover_20.0.2beta3-1_amd64.deb
duck_7.10.3.35460-1_amd64.deb
code_1.61.2-1634656828_amd64.deb
teamviewer_15.22.3_amd64.deb
clash-linux-amd64-v1.7.1.gz
typora-linux-x64.tar.gz

#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-07-07 14:31:20
 # @LastEditTime: 2021-07-07 18:11:15
 # @LastEditors: Cloudflying
 # @Description: Packages
 # @FilePath: /deb/pkgs.sh
### 

# Repo
deb http://ppa.launchpad.net/system76/pop/ubuntu cosmic main
http://ppa.launchpad.net/system76/pop/ubuntu/dists/cosmic/main
http://ppa.launchpad.net/system76/pop/ubuntu/pool/

deb https://dl.winehq.org/wine-builds/ubuntu/ focal main
deb http://security.ubuntu.com/ubuntu/ focal-security main restricted

deb http://us.archive.ubuntu.com/ubuntu/ cosmic main restricted universe multiverse
http://us.archive.ubuntu.com/ubuntu/dists/cosmic/main
http://us.archive.ubuntu.com/ubuntu/dists/cosmic/restricted
http://us.archive.ubuntu.com/ubuntu/dists/cosmic/universe
http://us.archive.ubuntu.com/ubuntu/dists/cosmic/multiverse

src http://us.archive.ubuntu.com/ubuntu/ cosmic-updates main restricted universe multiverse
deb-src http://us.archive.ubuntu.com/ubuntu/ cosmic-updates main restricted universe multiverse
http://us.archive.ubuntu.com/ubuntu/dists/cosmic-updates/main
http://us.archive.ubuntu.com/ubuntu/dists/cosmic-updates/restricted
http://us.archive.ubuntu.com/ubuntu/dists/cosmic-updates/universe
http://us.archive.ubuntu.com/ubuntu/dists/cosmic-updates/multiverse

http://archive.ubuntu.com/ubuntu/
deb http://ppa.launchpad.net/system76/pop/ubuntu disco main
https://apt.pop-os.org/staging-ubuntu/
https://apt.pop-os.org/staging/master/
https://linux.dropbox.com/ubuntu/
http://dl.google.com/linux/chrome/deb/ dists repo
http://ppa.launchpad.net/gnome3-team/gnome3-staging/ubuntu/
http://ppa.launchpad.net/gnome3-team/gnome3/ubuntu/
http://ppa.launchpad.net/lazka/dumpingplace/ubuntu/
http://ppa.launchpad.net/libreoffice/libreoffice-prereleases/ubuntu/
http://ppa.launchpad.net/mc3man/mpv-tests/ubuntu/
http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/
http://ppa.launchpad.net/otto-kesselgulasch/gimp-edge/ubuntu/
http://ppa.launchpad.net/papirus/papirus/ubuntu/
http://ppa.launchpad.net/ricotz/testing/ubuntu/
http://ppa.launchpad.net/ricotz/unstable/ubuntu/
http://ppa.launchpad.net/tista/adapta/ubuntu/
http://ppa.launchpad.net/ubuntu-mozilla-daily/ppa/ubuntu/
http://ppa.launchpad.net/webupd8team/gthumb/ubuntu/
http://ppa.launchpad.net/xorg-edgers/ppa/ubuntu/
http://ppa.launchpad.net/xubuntu-dev/extras/ubuntu/
http://ppa.launchpad.net/xubuntu-dev/ppa/ubuntu/
https://packages.microsoft.com/repos/vscode/
https://dl.winehq.org/wine-builds/ubuntu/
https://deb.nodesource.com/node_0.10/
https://deb.nodesource.com/node_0.12/
https://deb.nodesource.com/node_4.x/ 4-16
https://deb.nodesource.com/node_16.x/
https://deb.nodesource.com/iojs_1.x/ 1-3
http://repo.steampowered.com/steam/


ZOOM_URL="https://zoom.us/client/latest/zoom_amd64.deb"
https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64
https://az764295.vo.msecnd.net/stable/507ce72a4466fbb27b715c3722558bb15afa9f48/code_1.57.1-1623937013_amd64.deb
https://dl.discordapp.net/apps/linux/discord/discord-0.0.15.deb
https://downloads.slack-edge.com/linux_releases/slack-desktop-4.4.2-amd64.deb

name = "spotify-client"
version = "1.1.10.546.ge08ef575-19"

    [[direct.urls]]
    url = "http://repository.spotify.com/pool/non-free/s/${name}/${name}_${version}_amd64.deb"
    checksum = "da49fd4d222ff7d719345fba6298f38a6422ef293bb43ada13cf857a694a12e6"

[[direct]]
name = "signal-desktop"
version = "1.40.1"

    [[direct.urls]]
    url = "https://updates.signal.org/desktop/apt/pool/main/s/signal-desktop/signal-desktop_${version}_amd64.deb"
    checksum = "871f0215cc13742181be8640304a457fb414ee70b9e19204b06870627ac8a74c"


name = "google-chrome-stable"
version = "current"
https://dl.google.com/linux/direct/${name}_${version}_amd64.deb

[[direct]]
name = "gitkraken"
version = "current"

    [[direct.urls]]
    url = "https://release.gitkraken.com/linux/${name}-amd64.deb"

[[direct]]
name = "plex-media-server"
version = "1.18.2.2058-e67a4e892"

    [[direct.urls]]
    url = "https://downloads.plex.tv/plex-media-server-new/1.18.2.2058-e67a4e892/debian/plexmediaserver_1.18.2.2058-e67a4e892_amd64.deb"
    checksum = "a48082bce73747257ca754198992214ff3fad805fe989ff2fda46052315f38b1"


# wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz"

deb http://apt.pop-os.org/proprietary disco main
deb-src http://apt.pop-os.org/proprietary disco main

https://api.launchpad.net/devel/ubuntu/  + codename

http://repo.steampowered.com/steam/archive/stable/steam_latest.deb
http://repo.steampowered.com/steam/archive/stable/steam_latest.dsc
http://repo.steampowered.com/steam/archive/stable/steam_latest_i386.deb
http://repo.steampowered.com/steam/archive/stable/steam-launcher_latest_all.deb
http://repo.steampowered.com/steam/archive/stable/steam-launcher_latest-stable_all.deb
http://repo.steampowered.com/steam/archive/stable/steam-launcher_1.0.0.70_all.deb

https://download.sublimetext.com/sublime-text_build-3211_amd64.deb

https://github.com/atom/atom-nightly-releases/releases
https://atom.io/download/deb?channel=nightly
https://atom.io/download/deb?channel=beta
https://atom.io/download/deb
https://github.com/atom/atom/releases

https://wdl1.pcfg.cache.wpscdn.com/wpsdl/wpsoffice/download/linux/10161/wps-office_11.1.0.10161.XA_amd64.deb

https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/10161/wps-office_11.1.0.10161_amd64.deb
https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/10161/wps-office_11.1.0.10161_mips64el.deb
https://wdl1.cache.wps.cn/wps/download/ep/Linux2019/10161/wps-office_11.1.0.10161_arm64.deb

https://d1.music.126.net/dmusic/netease-cloud-music_1.2.0_amd64_deepin_stable_20190424.deb
https://d1.music.126.net/dmusic/netease-cloud-music_1.2.1_amd64_ubuntu_20190428.deb

- https://github.com/Homebrew/homebrew-core

https://deb.nodesource.com/setup_17.x

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

https://az764295.vo.msecnd.net/stable/7db1a2b88f7557e0a43fec75b6ba7e50b3e9f77e/code_1.63.0-1638854446_arm64.deb

https://packages.microsoft.com/

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
"deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'

## dotnet
```
sudo apt-get install -y gpg
wget -O - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor -o microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
wget https://packages.microsoft.com/config/ubuntu/{os-version}/prod.list
sudo mv prod.list /etc/apt/sources.list.d/microsoft-prod.list
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg
sudo chown root:root /etc/apt/sources.list.d/microsoft-prod.list
sudo apt-get update; \
  sudo apt-get install -y apt-transport-https && \
  sudo apt-get update && \
  sudo apt-get install -y {dotnet-package}
```

http://elephant.appstore.deepin.com/config/p/

https://community-store-packages.deepin.com/deepin
http://cdn.packages.deepin.com/deepin

Acquire::SmartMirrors::Token "a=UnionTech OS Desktop;b=Desktop;c=Professional;v=20.1041.11018.101;i=08c8141ea08aa424fd164da141d53ead7839a8da20217b8c6c3c72c7ccbaadb9;m=Intel(R) Core(TM) i9-10880H CPU @ 2.30GHz";

machine packages.chinauos.com login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine packages.chinauos.cn login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine uos.deepin.cn login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine store.chinauos.com login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine professional-store-packages.chinauos.com login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine professional-packages.chinauos.com login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2
machine pro-store-packages.uniontech.com login uos-https://license.chinauos.com-apt password a=TXBHWLAOPZT4UGCA&aa=&ab=v1&b=v2&c=6171676f130bbe000116024f&d=&e=287ecf4587f0bc1d6584ce092c1fd911&f=c6c7f1071017f98778ab0b07a5b89db8&g=AAASAA&h=1041&i=101&j=daea13ac70e7990eb9def7e03a756938&k=9185-779c-8f5c-db22&l=9185-779c-8f5c-db22&m=9185-779c-8f5c-db22&n=by-id-ata-UOS_Pro-0_SSD_W7XRD5SEAETM78SVJ6PJ,UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&o=UOSPro0SSDW7XRD5SEAETM78SVJ6PJ&p=5116481508f97be32c4fd9eca3948130&q=484f6798a800f08ea24272bc395b30f4&r=001C42B23F08&s=1&t=2&v=5.5.15&w=&y=-1&z=2

## Uso Enterprise
deb https://pro-store-packages.uniontech.com/appstore eagle-pro appstore
deb https://professional-packages.chinauos.com/desktop-professional eagle main contrib non-free
deb-src https://professional-packages.chinauos.com/desktop-professional eagle main contrib non-free
deb https://professional-packages.chinauos.com/printer eagle non-free
deb https://enterprise-packages.chinauos.com/server-enterprise fou/1040 main contrib non-free
#deb-src https://enterprise-packages.chinauos.com/server-enterprise fou/1040 main contrib non-free

curl --user "uos-https://license.chinauos.com-apt:a=2Y7NNBD7KYCGCAAA&aa=&ab=v2&b=v2&c=617460fd130bbe0001160a42&d=&e=c7264dab173b1f827ea83ebe1844af75&f=d72c4e05da030dcfffff4517353bb1fb&g=AJASAA&h=1040&i=101&j=5a7af09649ceaaacc4597045c1711f1a&k=7ac5-5aae-8e38-bbaf&l=7ac5-5aae-8e38-bbaf&m=7ac5-5aae-8e38-bbaf&n=by-id-ata-USO_Server-0_SSD_654WYPHT5G34V7Y5SRS5,USOServer0SSD654WYPHT5G34V7Y5SRS5&o=USOServer0SSD654WYPHT5G34V7Y5SRS5&p=da39c7048e3caaa1af4a6a279c4a10e1&q=8d5ac0ae1fb21a757dc1e2c543dcbd14&r=001C428A6C9A&s=1&t=2&v=5.5.3.8&w=&y=-1&z=2" -IL https://enterprise-packages.chinauos.com/server-enterprise/pool/non-free/z/zangband/zangband-data_2.7.5pre1-12_all.deb

https://cdn-enterprise-packages.chinauos.com/server-enterprise/pool/non-free/z/zangband/zangband-data_2.7.5pre1-12_all.deb?auth_key=1639163289-4a7c970f6b663173d5d8d53b4a683474-0-bb073722572a7de38b878b4a2c977c9e

## Archlinux Repo
- https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/
- https://github.com/archlinux/svntogit-community
- https://github.com/archlinux/svntogit-packages
- https://github.com/BlackArch/blackarch
- https://github.com/eli-schwartz/pkgbuilds
- https://github.com/Martchus/PKGBUILDs
- https://github.com/acxz/pkgbuilds
- https://github.com/alexheretic/aurto
- https://github.com/ctlos/ctlos-aur

## Macos
- https://github.com/Homebrew/homebrew-cask
- https://github.com/Homebrew/homebrew-core
- https://github.com/Homebrew/homebrew-cask-fonts
- https://github.com/Homebrew/homebrew-cask-drivers
- https://github.com/Homebrew/homebrew-cask-versions
- https://github.com/macports/macports-ports

## Linux
- Any Package Source
- https://github.com/NixOS/nixpkgs
- https://github.com/alpinelinux/aports
- https://github.com/freebsd/freebsd-ports
- https://github.com/void-linux/void-packages
- https://github.com/openbsd/ports
- https://github.com/jasperla/openbsd-wip
- https://github.com/rsyslog/rsyslog-pkg-ubuntu
- https://github.com/NetBSD/pkgsrc
- https://github.com/freebsd/pkg

## 每个软件都是一个仓库
- https://salsa.debian.org/debian
- https://gitlab.com/kalilinux/packages

## Package Mirrors
- http://packages.deepin.com
- http://archive.kylinos.cn/kylin
- http://archive.ubuntukylin.com
- Archlinux
- Manjaro
- https://github.com/KaOS-Community-Packages
- http://ppa.launchpad.net/mmk2410/intellij-idea/ubuntu/
- http://dl.google.com/linux/chrome/deb/ stable main
- http://dl.google.com/linux/chrome/deb/dists/stable/Release
- http://dl.google.com/linux/chrome/deb/dists/stable/main/binary-amd64/Packages
- https://cdn-package-store6.deepin.com/appstore/dists/eagle/Release
- https://dl.fedoraproject.org/pub/

echo "Server = https://mirrors.ustc.edu.cn/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist
apt-get install software-properties-common python-software-properties



add-apt-repository ppa:mmk2410/intellij-idea-community
http://ppa.launchpad.net/mmk2410/intellij-idea-community/ubuntu
http://ppa.launchpad.net/mmk2410/intellij-idea-community/ubuntu/dists/trusty/Release

http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com bionic main
http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com/pool/main/w/webstorm/webstorm_2020.3.1_all.deb
http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com/dists/bionic/Release
http://jetbrains-ppa.s3-website.eu-central-1.amazonaws.com/dists/bionic/main/binary-amd64/Packages

http://repository.spotify.com stable non-free
http://repository.spotify.com/dists/stable/Release
http://repository.spotify.com/dists/stable/non-free/binary-amd64/Packages

deb http://archive.ubuntu.com/ubuntu/ xenial main restricted

https://download.sublimetext.com/dists/apt/stable/Release

https://download.sublimetext.com/ apt/stable/
download.sublimetext.com/apt/stable/InRelease

http://security.ubuntu.com/ubuntu/ xenial-security multiverse
security.ubuntu.com/ubuntu/dists/xenial-security/InRelease

- https://mirrors.huaweicloud.com
- https://repo.huaweicloud.com

store eagle binary amd64 i386

https://community-store-packages.deepin.com/appstore
https://community-packages.deepin.com/printer/

https://community-packages.deepin.com/

deb https://community-store-packages.deepin.com/appstore eagle appstore
deb https://community-packages.deepin.com/printer eagle non-free
deb [by-hash=force] https://community-packages.deepin.com/deepin/ apricot main contrib non-free

https://community-store-packages.deepin.com/appstore/dists/apricot/Release

http://archive.ubuntukylin.com/ubuntukylin/pool/main/s/sogoupinyin/sogoupinyin_2.3.1.0112_amd64.deb
http://archive.kylinos.cn/kylin/partner/pool/360epp_10.0.0.1001_amd64.deb
# dis eagle  appstore
https://home-packages.chinauos.com/home
http://uos-packages.deepin.com/uos/
https://home-store-packages.chinauos.com/appstore/dists/eagle/Release

https://cdn-package-store6.deepin.com/appstore/dists/apricot/Release
https://cdn-package-store6.deepin.com/appstore/dists/eagle/Release
https://cdn-package-store6.deepin.com/appstore/dists/apricot/non-free/binary-amd64/Packages

http://archive.kylinos.cn/kylin/

https://dstore-operation-china.deepin.cn/api/app
https://cdn-package-store6.deepin.com/appstore/pool/appstore/c/com.qq.weixin/com.qq.weixin_2.0.0-2_amd64.deb

https://cdn-package-store6.deepin.com/appstore/dists/eagle/appstore/binary-amd64/Packages
https://cdn-package-store6.deepin.com/appstore/dists/apricot/appstore/binary-amd64/Packages

http://mirrors.aliyun.com/deepin/dists/apricot/non-free/binary-amd64/Packages
http://mirrors.aliyun.com/deepin/dists/eagle/non-free/binary-amd64/Packages

## Ubuntu Kylin
deb http://archive.ubuntukylin.com/ubuntukylin focal main
deb http://archive.ubuntukylin.com/ubuntukylin focal-partner main

## Elementary
deb http://ppa.launchpad.net/elementary-os/stable/ubuntu focal main 
deb-src http://ppa.launchpad.net/elementary-os/stable/ubuntu focal main

### Patch
deb http://ppa.launchpad.net/elementary-os/os-patches/ubuntu focal main
deb-src http://ppa.launchpad.net/elementary-os/os-patches/ubuntu focal main

- https://github.com/archlinux/svntogit-community
- https://github.com/archlinux/svntogit-packages
- https://formulae.brew.sh/
- https://github.com/Homebrew/homebrew-core
- https://github.com/Homebrew/linuxbrew-core
- https://github.com/Homebrew/homebrew-cask
- https://github.com/Homebrew/homebrew-cask-fonts
- https://github.com/BlackArch/blackarch

## 软件源
- https://snapcraft.io/
- linux Brew
- MacOS Brew

- https://github.com/linuxdeepin/org.deepin.downloader
- https://github.com/linuxdeepin/deepin-log-viewer
- https://github.com/linuxdeepin/dtkwidget
- https://www.deepin.org/zh/original/

https://aur.andontie.net/x86_64/
https://github.com/arch4edu/arch4edu
https://github.com/ArchStrike/ArchStrike
https://github.com/ArchStrike/pkgupdates
http://repo.arcanis.me/x86_64/index.html
https://mirror.lesviallon.fr/
https://github.com/archzfs/archzfs
https://github.com/vbouchaud/aur
https://github.com/BioArchLinux/Packages
https://www.suruatoel.xyz/arch
https://github.com/dvdesolve/ArchRPkgs
https://arch.miffe.org/
https://github.com/damentz/liquorix-package
https://gitlab.com/m2x.dev/kernel-lts/repository
https://github.com/jstkdng/aur
https://ivasilev.net/pacman
https://gitlab.com/Thaodan/linux-pf
https://git.little.kiwi/grawlinson/arch-pkgs
http://download.opensuse.org/repositories/home:/fusion809/
http://download.opensuse.org/repositories/home:/fusion809/Arch_Extra/x86_64/
https://github.com/dasbaumwolltier/aur-building
https://pkgbuild.com/~maximbaz/repo/
https://github.com/kevall474/Liquorix
https://github.com/kevall474/XanMod
https://www.sublimetext.com/docs/linux_repositories.html#pacman
https://repo.origincode.me/repo/
https://github.com/anatol/quarry
https://github.com/Kwpolska/pkgbuilder
https://gitlab.com/m2x.dev/xfce4/repository

https://github.com/void-linux/void-packages
https://github.com/dreamrover/v2ray-deb
https://github.com/Eugeny/tabby

https://github.com/google/fonts
https://github.com/Homebrew/homebrew-cask-fonts
https://mirror.cyberbits.eu/sks/dump/

# sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys BA300B7755AFCFAE
wget -qO - https://typora.io/linux/public-key.asc | sudo tee /etc/apt/trusted.gpg.d/typora.asc
'deb https://typora.io/linux ./'


http://download.cs2c.com.cn/neokylin/
http://archive.build.openkylin.top/openkylin/
https://archive2.kylinos.cn/deb/
http://archive.kylinos.cn/kylin/KYLIN-ALL/pool/restricted/f/