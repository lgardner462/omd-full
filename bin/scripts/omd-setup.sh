#!/bin/bash

#Change directory to where script is located
cd "$(dirname "$0")"

show_help () {
  
    echo "\$1 is site name for first site"
    exit
}


###################run as site user eg run as nodes on omd site nodes

if [ $# -eq 0 ];then
    echo "No arguments supplied, \$1 is the name of your first site to create \$2 is the password for web login"
    exit 1
fi
site=$1
adminname=$site"-admin"
password=$2
while getopts "h|\?" o;do
    case "$o" in
        h)
            show_help
            exit 0
            ;;
    esac
done    

status=0
echo "Checking if group exists."
getent group $site
status=$?
if [[ $status == $? ]];then
    echo "OMD creates a group for omd site, please choose another site name or remove the group"
    exit 1
fi


if [[ $EUID -ne 0 ]];then
    echo "OMD setup script must be run as root user"
    exit 1
fi

yum install -y wget

yum install -y bind-utils

yum install -y mailx

#wget https://labs.consol.de/repo/stable/rhel7/x86_64/omd-1.30.rhel7.x86_64.rpm 

yum --nogpgcheck localinstall -y ../rpms/omd-1.30.rhel7.x86_64.rpm 

cp /usr/lib64/python2.7/hashlib.py /omd/versions/1.30/lib/python/hashlib.py

#########add  https://monitoring-portal.org/index.php?thread/34786-hashlib-problem-rhel-7-2-maipo-oel-7-2/ to comments for the hashlib issue

setenforce 0

omd create $site

omd start

htpasswd -b /omd/sites/$site/etc/htpasswd  $adminname $password
htpasswd -b /omd/sites/$site/etc/htpasswd  omdadmin $password



#su - <sitename> 
#
#run   checkmk-setup.sh $CONTRACTNAME $ADMINPASSWORD as omd site user

