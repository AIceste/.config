#!/bin/bash
read change
pactl set-sink-volume $(pacmd list-sinks | grep -B 4 RUNNING | grep index | awk ' { print $NF } ') $change%
