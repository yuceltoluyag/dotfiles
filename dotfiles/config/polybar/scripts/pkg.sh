#!/bin/bash

pac=$(checkupdates 2> /dev/null | wc -l)
aur=$(yay -Qum 2> /dev/null | wc -l)
icone="${HOME}/.local/share/icons/flattrcolor/apps/64/package.svg"

if [ $1 ]; then
	if [ $pac -gt 0 ] || [ $aur -gt 0 ]; then
		$TERMINAL -e "yay -Syu"
	else
		notify-send -i $icone "Güncelleniyor" "Güncelleme yok."
	fi
else
	echo "${pac}/${aur}"
fi