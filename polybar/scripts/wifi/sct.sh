#!/bin/bash
# SCT POLYBAR BRIDGE, AUTHOR ON https://t.me/O5M4NA6A

key=1

if [ "$(ls ~/.config/polybar/scripts/wifi | grep sct.txt)" == "sct.txt" ]
then
	case $1 in
                gettemp )
                        cat ~/.config/polybar/scripts/wifi/sct.txt | head -n 1
			polybar-msg -p 1 hook wifiname 1 > /dev/null
                ;;
                getstatus )
                       	cat ~/.config/polybar/scripts/wifi/sct.txt | tail -n 1
			polybar-msg -p 1 hook wifiname 1 > /dev/null
		;;
		switch )
			if [ "$key" == "0" ]
				then
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}'
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}' > ~/.config/polybar/scripts/wifi/sct.txt
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}' >> ~/.config/polybar/scripts/wifi/sct.txt
					polybar-msg -p 1 hook wifiname 1 > /dev/null
				else
					dig +short myip.opendns.com @resolver1.opendns.com
					dig +short myip.opendns.com @resolver1.opendns.com > ~/.config/polybar/scripts/wifi/sct.txt
					dig +short myip.opendns.com @resolver1.opendns.com >> ~/.config/polybar/scripts/wifi/sct.txt
					polybar-msg -p 1 hook wifiname 1 > /dev/null
			fi
		;;
	esac
else
	touch ~/.config/polybar/scripts/wifi/sct.txt
	case $1 in
               	gettemp )
                       	cat ~/.config/polybar/scripts/wifi/sct.txt | head -n 1
			polybar-msg -p 1 hook wifiname 1 > /dev/null
               	;;
               	getstatus )
                       	cat ~/.config/polybar/scripts/wifi/sct.txt | tail -n 1
			polybar-msg -p 1 hook wifiname 1 > /dev/null
               	;;
		switch )
			if [ "$key" == "0" ]
				then
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}'
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}' > ~/.config/polybar/scripts/wifi/sct.txt
					iwconfig 2>&1 | grep wl | awk -F '"' '{print $2}' >> ~/.config/polybar/scripts/wifi/sct.txt
					polybar-msg -p 1 hook wifiname 1 > /dev/null
				else
					dig +short myip.opendns.com @resolver1.opendns.com
					dig +short myip.opendns.com @resolver1.opendns.com > ~/.config/polybar/scripts/wifi/sct.txt
					dig +short myip.opendns.com @resolver1.opendns.com >> ~/.config/polybar/scripts/wifi/sct.txt
					polybar-msg -p 1 hook wifiname 1 > /dev/null
			fi
                ;;
        esac
fi
