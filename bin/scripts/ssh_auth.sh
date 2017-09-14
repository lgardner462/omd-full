#!/bin/bash
cmkuser=$(getent passwd | grep OMD | awk -F : '{print $1}')
authsock=$( set | grep SSH_AUTH_SOCK | awk -F = '{print $2}' | rev | cut -d"/" -f2- |rev) 
exportStr=$(set | grep SSH_AUTH_SOCK )
#echo $authsock | rev | cut -d"/" -f2- |rev 
chown -R "$cmkuser":"$cmkuser" $authsock
echo ""
echo ""
echo "Do this to connect to socket..."
echo ""
echo "export $exportStr"
echo ""
echo "Do this to check if successful"
echo ""
echo "ssh-add -L"
echo ""
echo "Do this to get to git dir"
echo ""
echo "cd ~/etc/check_mk/conf.d/wato"
echo ""
sudo  su - $cmkuser

