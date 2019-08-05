#!/bin/bash

firstpart='{"command":["loadfile","'
filename=$1
lastpart='","append-play"]}' 
test=$(xdotool search --class "mpv")

if [ -n "$test" ]; then
	notify-send "Added $filename to mpv"
	echo $firstpart$filename$lastpart | socat - /tmp/mpvsocket
else
	(mpv --force-window=yes --no-terminal "$2" "$1" &)
fi

