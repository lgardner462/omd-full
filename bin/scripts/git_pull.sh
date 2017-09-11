#!/bin/bash

cd /omd/sites/$(whoami)/etc/check_mk/conf.d/wato
git pull origin master
git-sed -f g tsstuff $(whoami)

