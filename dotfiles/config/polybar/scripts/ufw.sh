#!/bin/bash

cor=$(awk -F# '/destaque/{print $2;exit}' ${HOME}/.config/polybar/config)
status=$(sudo ufw status 2>/dev/null)

# Left click
if [[ "$1" == "toggle" ]]; then
	if [[ "${status}" != *inactive* ]]; then
  		sudo ufw disable
  		notify-send "FireWall" "Güvenlik Duvarı Etkin!"
  	else
		sudo ufw enable
		notify-send "FireWall" "Güvenlik Duvarı Devre Dışı!"	
	fi
fi

if [[ $? -gt 0 ]]; then
  exit
fi

if [[ "${status}" != *inactive* ]]; then
  echo "%{F#${cor}}%{F-}"
else
  echo "%{F#${cor}}%{F-}"
fi
