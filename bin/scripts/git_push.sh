#!/bin/bash

git-sed -f g $(whoami) engaging
git add .
git commit -m -a "$@"
git push origin master
git-sed -f g engaging $(whoami)

