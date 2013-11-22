#!/bin/bash

lsof -iTCP -sTCP:LISTEN -P | grep ':7070' | grep -v 'grep' | awk '{print $2}' | xargs kill -9

a=`lsof -iTCP -sTCP:LISTEN -P | grep ':7070' | grep -v 'grep' | wc -l`

if [ $a == 0 ]; then
    ssh -fND 7070 bj@joinjoy.me
fi
