#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-11-30 23:24:06
 # @LastEditTime: 2021-12-01 00:44:28
 # @LastEditors: Cloudflying
 # @Description: Ubuntu Linux install php with apt package manager
 # @FilePath: /build/ubuntu-apt-install-php.sh
### 

# OSCODE=$(grep 'UBUNTU_CODENAME=' /etc/os-release | awk -F '=' '{print $2}')
OSID=$(cat /etc/os-release | grep '^VERSION_ID=' | awk -F '"' '{print $2}')

# 21.10 groovy 21.04 hirsute php 7.4
if [[ "{OSID}" == '21.04' ]] || [[ "{OSID}" == '21.10' ]] ; then
    apt install -y --no-install-recommends php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-phpdbg php7.4-pspell php7.4-readline php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip
# 20.10 groovy 20.04 focal php 7.4
elif [[ "{OSID}" == '20.04' ]] || [[ "{OSID}" == '20.10' ]]; then
    apt install -y --no-install-recommends php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-phpdbg php7.4-pspell php7.4-readline php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip
# 19.10 eoan 19.04 disco php 7.2
elif [[ "{OSID}" == '19.04' ]] || [[ "{OSID}" == '19.04' ]]; then
    apt install -y --no-install-recommends php7.2 php7.2-bcmath php7.2-bz2 php7.2-cgi php7.2-cli php7.2-common php7.2-curl php7.2-dba php7.2-dev php7.2-enchant php7.2-fpm php7.2-gd php7.2-gmp php7.2-imap php7.2-interbase php7.2-intl php7.2-json php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-odbc php7.2-opcache php7.2-pgsql php7.2-phpdbg php7.2-pspell php7.2-readline php7.2-recode php7.2-snmp php7.2-soap php7.2-sqlite3 php7.2-sybase php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip
# 18.10 cosmic 18.04 bionic 7.2
elif [[ "{OSID}" == '18.04' ]] || [[ "{OSID}" == '18.10' ]]; then
    apt install -y --no-install-recommends php7.2 php7.2-bcmath php7.2-bz2 php7.2-cgi php7.2-cli php7.2-common php7.2-curl php7.2-dba php7.2-dev php7.2-enchant php7.2-fpm php7.2-gd php7.2-gmp php7.2-imap php7.2-interbase php7.2-intl php7.2-json php7.2-ldap php7.2-mbstring php7.2-mysql php7.2-odbc php7.2-opcache php7.2-pgsql php7.2-phpdbg php7.2-pspell php7.2-readline php7.2-recode php7.2-snmp php7.2-soap php7.2-sqlite3 php7.2-sybase php7.2-tidy php7.2-xml php7.2-xmlrpc php7.2-xsl php7.2-zip
# 17.10 artful 17.04 zesty 7.2
elif [[ "{OSID}" == '17.04' ]] || [[ "{OSID}" == '17.10' ]]; then
    apt install -y --no-install-recommends php7.0 php7.0-bcmath php7.0-bz2 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-dba php7.0-dev php7.0-enchant php7.0-fpm php7.0-gd php7.0-gmp php7.0-imap php7.0-interbase php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-phpdbg php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite3 php7.0-sybase php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip
# 16.10 yakkety 16.04 xenial 7.0
elif [[ "{OSID}" == '16.04' ]] || [[ "{OSID}" == '16.10' ]]; then
    apt install -y --no-install-recommends php7.0 php7.0-bcmath php7.0-bz2 php7.0-cgi php7.0-cli php7.0-common php7.0-curl php7.0-dba php7.0-dev php7.0-enchant php7.0-fpm php7.0-gd php7.0-gmp php7.0-imap php7.0-interbase php7.0-intl php7.0-json php7.0-ldap php7.0-mbstring php7.0-mcrypt php7.0-mysql php7.0-odbc php7.0-opcache php7.0-pgsql php7.0-phpdbg php7.0-pspell php7.0-readline php7.0-recode php7.0-snmp php7.0-soap php7.0-sqlite3 php7.0-sybase php7.0-tidy php7.0-xml php7.0-xmlrpc php7.0-xsl php7.0-zip
# 14.10 Uptopic 14.04 trusty 5.5
elif [[ "{OSID}" == '14.04' ]] || [[ "{OSID}" == '14.10' ]]; then
    apt install -y --no-install-recommends php5 php5-cgi php5-cli php5-common php5-curl php5-dbg php5-dev php5-gd php5-gmp php5-json php5-ldap php5-mysql php5-odbc php5-pgsql php5-pspell php5-readline php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
fi