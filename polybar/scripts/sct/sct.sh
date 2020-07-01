#!/bin/bash
# SCT POLYBAR BRIDGE, AUTHOR ON https://t.me/O5M4NA6A

key=1

if [ "$(ls ~/.config/polybar/scripts/sct | grep sct.txt)" == "sct.txt" ]
then
	case $1 in
                gettemp )
                        cat ~/.config/polybar/scripts/sct/sct.txt | head -n 1
			polybar-msg -p 1 hook sct 1 > /dev/null
                ;;
                getstatus )
                       	cat ~/.config/polybar/scripts/sct/sct.txt | tail -n 1
			polybar-msg -p 1 hook sct 1 > /dev/null
		;;
		switch )
			if [ "$key" == "0" ]
				then
					redshift -m vidmode -x
					echo "   Off 6500" > ~/.config/polybar/scripts/sct/sct.txt
					echo "   Off" >> ~/.config/polybar/scripts/sct/sct.txt
					polybar-msg -p 1 hook sct 1 > /dev/null
				else
					redshift -m vidmode -O 4300
					echo "   On 4000" > ~/.config/polybar/scripts/sct/sct.txt
					echo "   On" >> ~/.config/polybar/scripts/sct/sct.txt
					polybar-msg -p 1 hook sct 1 > /dev/null
			fi
		;;
	esac
else
	touch ~/.config/polybar/scripts/sct.txt
	case $1 in
               	gettemp )
                       	cat ~/.config/polybar/scripts/sct/sct.txt | head -n 1
			polybar-msg -p 1 hook sct 1 > /dev/null
               	;;
               	getstatus )
                       	cat ~/.config/polybar/scripts/sct/sct.txt | tail -n 1
			polybar-msg -p 1 hook sct 1 > /dev/null
               	;;
		switch )
			if [ "$key" == "0" ]
				then
					redshift -m vidmode -x
					echo "   Off 6500" > ~/.config/polybar/scripts/sct/sct.txt
					echo "   Off" >> ~/.config/polybar/scripts/sct/sct.txt
					polybar-msg -p 1 hook sct 1 > /dev/null
				else
					redshift -m vidmode -O 4300
					echo "   On 4000" > ~/.config/polybar/scripts/sct/sct.txt
					echo "   On" >> ~/.config/polybar/scripts/sct/sct.txt
					polybar-msg -p 1 hook sct 1 > /dev/null
			fi
                ;;
        esac
fi
