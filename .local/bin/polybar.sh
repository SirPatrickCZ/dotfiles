#!/bin/bash

if pgrep -x "polybar" > /dev/null
then
	killall polybar
	bspc config top_padding 0
	notify-send "Polybar" "Polybar killed"
else
	polybar bar &
	sleep 1
	bspc config top_padding 25
       	notify-send "Polybar" "Polybar activated"
fi
