#!/bin/bash

a=`netstat -tunlp | grep ':7070' | grep -v 'grep' | wc -l`

if [ $a == 0 ]; then
    ssh -fND 7070 bj@joinjoy.me
fi
