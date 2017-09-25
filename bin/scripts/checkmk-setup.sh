#!/bin/bash



show_help () {
  
    echo "\$1 is contract name and \$2 is the admin login password"
    exit
}


###################run as site user eg run as nodes on omd site nodes

if [ $# -eq 0 ]
  then
    echo "No arguments supplied, \$1 is contract name, \$2 is the admin login password"
    exit 1
fi

while getopts "h|\?" o;do
	case "$o" in
		h)
			show_help
			exit 0
			;;
	esac
done	


if [[ $EUID -ne 0 ]];then
	site=$(whoami)
#	echo $EUID
#	echo $site
else
	echo "Script must be run as OMD user"
	exit 1
fi
contract=$1
password=$2
adminname=$contract-admin

cd /omd/sites/$site/etc/check_mk/conf.d/wato


echo "Clone from lgardner omd-full repo, make him put it somewhere else if needed"
git clone git@github.com:lgardner462/omd-full.git .

cp bin/scripts/git_push.sh .
cp bin/scripts/git_pull.sh .

mv users.mkz ../../multisite.d/wato/users.mk
mv multisite.mkz ../../multisite.mk

git rm --cached bin

git add .

git-sed -f g tsstuff $(whoami)

cmk -II; cmk -O

htpasswd -b /omd/sites/$site/etc/htpasswd  $adminname $password
htpasswd -b /omd/sites/$site/etc/htpasswd  omdadmin $password

#echo "4 0 * * * $OMD_ROOT/etc/check_mk/conf.d/git_pull.sh" > ~/etc/cron.d/git_pull


