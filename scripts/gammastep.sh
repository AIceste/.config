#!/bin/bash
# $1 is desired screen temperature, from 1000 to 6500
# $2 is desired screen brightness, from 0 to 1

# Get rid of previously running instance if any
kill -9 $(ps -A -o pid,cmd | grep "gammastep -l 0:0" | head -n -1 | awk '{print $1}')

# Launch instance with new values
gammastep -l 0:0 -O $1:$1 -b $2:$2 &
