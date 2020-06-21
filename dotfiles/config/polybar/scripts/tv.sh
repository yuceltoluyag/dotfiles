#!/bin/sh

if pgrep -x "xautolock" > /dev/null
then
	if [ $1 ]; then
		killall xautolock &
		notify-send -i ~/.local/share/icons/elementary/screensaver.png "Bilgi" "Ekran koruyucu devre dışı."
	fi
	echo "%{F#D08770}%{F-}"
else
	if [ $1 ]; then 
		xautolock -time 3 -detectsleep -locker $HOME/.local/lock/fortune &
		notify-send -i ~/.local/share/icons/elementary/screensaver.png "Bilgi" "Ekran koruyucu etkin."
	fi
	echo ""
fi
