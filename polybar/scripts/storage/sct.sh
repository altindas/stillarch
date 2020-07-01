#!/bin/bash
# SCT POLYBAR BRIDGE, AUTHOR ON https://t.me/O5M4NA6A

key=0

if [ "$(ls ~/.config/polybar/scripts/storage | grep sct.txt)" == "sct.txt" ]
then
	case $1 in
                gettemp )
                        cat ~/.config/polybar/scripts/storage/sct.txt | head -n 1
			polybar-msg -p 1 hook storage 1 > /dev/null
                ;;
                getstatus )
                       	cat ~/.config/polybar/scripts/storage/sct.txt | tail -n 1
			polybar-msg -p 1 hook storage 1 > /dev/null
		;;
		switch )
			if [ "$key" == "0" ]
				then
					echo "    /: $(df / | awk 'END{print $5}')  "
					echo "    /: $(df / | awk 'END{print $5}')  " > ~/.config/polybar/scripts/storage/sct.txt
					echo "    /: $(df / | awk 'END{print $5}')  " >> ~/.config/polybar/scripts/storage/sct.txt
					polybar-msg -p 1 hook storage 1 > /dev/null
				else
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """ > ~/.config/polybar/scripts/storage/sct.txt
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """ >> ~/.config/polybar/scripts/storage/sct.txt
					polybar-msg -p 1 hook storage 1 > /dev/null
			fi
		;;
	esac
else
	touch ~/.config/polybar/scripts/storage/sct.txt
	case $1 in
               	gettemp )
                       	cat ~/.config/polybar/scripts/storage/sct.txt | head -n 1
			polybar-msg hook -p 1 storage 1 > /dev/null
               	;;
               	getstatus )
                       	cat ~/.config/polybar/scripts/storage/sct.txt | tail -n 1
			polybar-msg hook -p 1 storage 1 > /dev/null
               	;;
		switch )
			if [ "$key" == "0" ]
				then
					echo "    /: $(df / | awk 'END{print $5}')  "
					echo "    /: $(df / | awk 'END{print $5}')  " > ~/.config/polybar/scripts/storage/sct.txt
					echo "    /: $(df / | awk 'END{print $5}')  " >> ~/.config/polybar/scripts/storage/sct.txt
					polybar-msg -p 1 hook storage 1 > /dev/null
				else
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """ > ~/.config/polybar/scripts/storage/sct.txt
					echo "    ""/: $(df / | awk 'END{print $5}')       Home: $(df /home | awk 'END{print $5}')       Data: $(df /data | awk 'END{print $5}')       Wdata: $(df /wdata | awk 'END{print $5}') """ >> ~/.config/polybar/scripts/storage/sct.txt
					polybar-msg -p 1 hook storage 1 > /dev/null
			fi
                ;;
        esac
fi
