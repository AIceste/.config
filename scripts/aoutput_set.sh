#!/bin/bash

pactl set-default-sink $1;
pactl set-sink-port $1 $2
pactl list-sink-inputs | grep index | while read line
do
	pactl move-sink-input `echo $line | cut -f2 -d' '` $1
done
