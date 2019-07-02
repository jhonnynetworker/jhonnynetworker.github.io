#!/bin/bash
COMMITX=`git log | head -n 1`

echo "Last commit was $COMMITX"

echo "git pull"
git pull

COMMITX2=`git log | head -n 1`

if [[ $COMMITX == $COMMITX2 ]]; then
	echo "no changes, okay for now"
else
	echo "new repository tip: $COMMITX2"
	echo "deploying new repository"
	sudo ./deploy.sh
fi

