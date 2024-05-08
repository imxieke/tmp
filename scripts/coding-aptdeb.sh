#!/usr/bin/env bash
#!/usr/bin/env bash
###
 # @Author: Cloudflying
 # @Date: 2021-10-24 11:45:53
 # @LastEditTime: 2021-12-31 22:06:43
 # @LastEditors: Cloudflying
 # @Description: 
 # @FilePath: /packages/scripts/coding-aptdeb.sh
### 
# @Author: imxieke
# @Date:   2021-10-24 11:45:53
# @Last Modified by:   imxieke
# @Last Modified time: 2021-10-24 13:01:36

API='https://cloudflying-generic.pkg.coding.net/mirrors/aptdeb'
USER='aptdeb-1635047134810'
PWD='081b20f497cd8a6be9192495d6aba875ffe082c2'

FILE=$2
# SAVE_TO=$3
SAVE_TO=$(echo $FILE | sed "s#./deb/##g")
SAVE_TO=$(echo $SAVE_TO | sed "s#deb/##g")

if [[ -z "$(echo $FILE | grep "^./deb/")" ]]; then
	echo "please move file to ./deb directory full path $(pwd)/deb/"
	exit 1
fi

_upload()
{
	if [[ ! -f ${FILE} ]]; then
		echo 'Please Cofirm File exist'
		exit 1
	fi

	if [[ -z "$(grep "^${SAVE_TO}\$" Packages)" ]]; then
		echo ${SAVE_TO} >> Packages
		echo "Start Upload $FILE"
	else
		echo "$FILE has upload"
		exit
	fi

	curl -T $FILE -u ${USER}:${PWD} "${API}/deb/${SAVE_TO}?version=latest"
	mv $FILE uploaded/
	# coding-generic -u=${USER}:${PWD} --path=$FILE --registry="${API}/chunks/<PACKAGE>?version=latest"	
}

_del()
{
	FILE=$2
	curl -X DELETE -u ${USER}:${PWD} "${API}/deb/${FILE}?version=latest"
}

case $1 in
	up )
		_upload $@
		;;
	del )
		_del $@
		;;
	* )
		echo 'Unknow Options'
		;;
esac