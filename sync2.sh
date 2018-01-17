#!/bin/bash
rm -f tmp/index.pid && node --stack-size=100000 scripts/peers.js
rm -f tmp/index.pid && node --stack-size=100000 scripts/sync.js market update
