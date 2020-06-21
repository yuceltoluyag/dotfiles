#!/bin/bash

hora=$1
audio="${HOME}/.alarm.wav"
audio="${HOME}/.local/share/sounds/alarm.mp3"
function alarme {
	n=1
	i=3
	while (( $n <= $1 )); do
		mpg123 $audio
		sleep $i
		n=$(( n+1 ))
	done
}

if [ $hora ]; then
	if [ "$hora" = "c" ]; then
		killall -9 $(basename $0)
		msg="Alarm İptal Edildi! $(basename $0)"
	else
		date "+%H:%M" -d "$hora" > /dev/null 2>&1
		if [ $? != 0 ]; then
			msg="Geçersiz zaman dilimi!\n\nGirilen Zaman: $hora \n\nFormat: (HH:MM)"
		else
			h=$(( $(date --date=${hora} +%s) - $(date +%s) ))
			if [ $h -gt 1 ]; then
				echo -e "Alarm çalar:\n$(date --date=${hora})"
				sleep $(( $(date --date=${hora} +%s) - $(date +%s) ));
				echo "KABUL Edildi!!!"
				#while true; do
	  				/usr/bin/mpg123 $audio
	  			#	sleep 3
				#done
				alarme 30			
				msg="Alarm olarak ayarlandı:\n\n${hora}"				
			else
				msg="Hatalı Giriş Yaptınız!\n\nYazmış Olduğun: $hora\nHesaplanan Zaman: $h \n\nFormat: (HH:MM)"
			fi
		fi
	fi

	echo -e $msg
fi