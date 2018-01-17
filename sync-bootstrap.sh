#!/bin/sh
if [ ! -f sync.sh ]; then
	echo bootstrap sync..
	echo \#!/bin/sh >> sync.sh
	echo echo syncing blockchain.. >> sync.sh
	echo cd $(pwd) >> sync.sh
	echo rm -f tmp/index.pid \&\& node --stack-size=100000 scripts/sync.js index update >> sync.sh
	chmod +x sync.sh
fi

if [ ! -f sync2.sh ]; then
	echo bootstrap sync2..
	echo \#!/bin/sh >> sync2.sh
	echo echo syncing blockchain.. >> sync2.sh
	echo cd $(pwd) >> sync2.sh
	echo rm -f tmp/index.pid \&\& node --stack-size=100000 scripts/peers.js >> sync2.sh
	echo rm -f tmp/index.pid \&\& node --stack-size=100000 scripts/sync.js market update >> sync2.sh
	chmod +x sync2.sh
fi

./sync2.sh
./sync.sh