#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done


for m in $(polybar --list-monitors | cut -d":" -f1); do
	WIRELESS=$(ls /sys/class/net/ | grep ^wl | awk 'NR==1{print $1}') MONITOR=$m polybar --reload
done

echo "Bars launched..."

# Launch bar1 and bar2
polybar -c ~/.config/polybar/config top-bar &
polybar -c ~/.config/polybar/config bottom-bar &