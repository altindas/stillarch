#!/bin/sh

player_status=$(playerctl status 2> /dev/null)
number_processes=$(pgrep spotify | wc -l)

if [ $number_processes -gt 1 ]; then
    echo " "
elif [ "$player_status" = "Playing" ]; then
    echo "    $(playerctl metadata title)"
elif [ "$player_status" = "Paused" ]; then
    echo "    $(playerctl metadata title)"
else
    echo ""
fi
