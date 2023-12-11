#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do
	sleep 1
done

polybar main 2>&1 | tee -a /tmp/polybar-main.log &
disown

if [[ $(xrandr --query | grep "HDMI1 connected") ]]; then
	polybar external 2>&1 | tee -a /tmp/polybar-external.log &
	disown
fi

echo "Polybar launched..."
