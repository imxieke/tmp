#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-12-10 13:31:32
 # @LastEditTime: 2021-12-10 13:42:17
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/auto-gen-gpg-key.sh
### 

CUR_PATH=$(dirname $(realpath $0))

source ${CUR_PATH}/env.sh

if [ -f ~/.aptly/public/sign.pub ]; then
    echo "Pubkey already exist: ~/.aptly/public/sign.pub. Don't gen more gpg keys." 1>&2
    exit
fi

# if gpg tells missing entropy, it's better to add more on your host first.
# $ sudo apt install rng-tools
# $ sudo rngd -f -r /dev/urandom

echo "Env variables:" 1>&2
echo "    GPG_NAME=${GPG_NAME}" 1>&2
echo "    GPG_COMMENT=${GPG_COMMENT}" 1>&2
echo "    GPG_EMAIL=${GPG_EMAIL}" 1>&2
echo "    GPG_PASSPHRASE=${GPG_PASSPHRASE}" 1>&2

if [[ "${GPG_NAME}" == "" || "${GPG_COMMENT}" == "" || "${GPG_EMAIL}" == "" || "${GPG_PASSPHRASE}" == "" ]]; then
    echo "GPG_NAME GPG_COMMENT GPG_EMAIL GPG_PASSPHRASE must be set. exit." 1>&2
    exit 1
fi

(cat <<EOF
%echo Generating a default key
#Refering docs from https://www.gnupg.org/documentation/manuals/gnupg-devel/Unattended-GPG-key-generation.html
Key-Type: RSA
Key-Length: 2048
Subkey-Type: RSA
Subkey-Length: 2048
Name-Real: ${GPG_NAME}
Name-Comment: ${GPG_COMMENT}
Name-Email: ${GPG_EMAIL}
Expire-Date: 0
Passphrase: ${GPG_PASSPHRASE}
%commit
%echo done
EOF
) | gpg --gen-key --batch -

gpg --armor --export > ~/.aptly/public/sign.pub || { rm ~/.aptly/public/sign.pub; exit 2; }