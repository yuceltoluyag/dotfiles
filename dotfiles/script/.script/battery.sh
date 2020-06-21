#!/bin/bash
# github.com/mamutal91

NOTIFY_ICON=/usr/share/icons/Papirus/32x32/apps/ 
bat="/sys/class/power_supply/BAT0"

while sleep 10
do
  LEVEL=$(cat "$bat"/capacity)
  STATUS=$(cat "$bat"/status)

  if [ "$STATUS" = "Discharging" ]; then
    if [ "$LEVEL" -le 15 ]; then
      DISPLAY=:0 dbus-launch notify-send -i $icon "Pil %15'in altında" "Lütfen Şarj Ediniz!!"
      canberra-gtk-play --file=$HOME/.config/files/sounds/power-plug.oga
    fi
  else
    echo "Charging..."
    if [ "$LEVEL" -eq 98 ]; then
      DISPLAY=:0 dbus-launch notify-send -i $icon "Pil şarj edildi!" "Dilerseniz Fişi çekebilirsiniz!"
    elif [ "$LEVEL" -ge 80 ]; then
      DISPLAY=:0 dbus-launch notify-send -i $icon "Pil %80'in üzerinde şarj oluyor" "Dilerseniz Fişi çekebilirsiniz!"
      canberra-gtk-play --file=$HOME/.config/files/sounds/completed.wav
    fi
  fi
done