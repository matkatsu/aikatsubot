#!/bin/bash

set -e

npm install
export PATH="node_modules/.bin:node_modules/hubot/node_modules/.bin:$PATH"

forever --minUptime 3000 --spinSleepTime 3000 start -c coffee node_modules/.bin/hubot -a slack -n aikatsubot "$@"