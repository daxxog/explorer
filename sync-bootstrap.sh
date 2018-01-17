#!/bin/sh
if [ ! -f sync.sh ]; then
	echo bootstrap sync..
	echo \#!/bin/sh >> sync.sh
	echo echo syncing blockchain.. >> sync.sh
	echo cd $(pwd) >> sync.sh
	echo rm -f tmp/index.pid \&\& node --stack-size=100000 scripts/sync.js index update >> sync.sh
	chmod +x sync.sh
fi

./sync.sh