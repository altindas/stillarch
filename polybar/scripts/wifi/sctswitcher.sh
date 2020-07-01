#!/bin/bash
# SCT POLYBAR BRIDGE, AUTHOR ON https://t.me/O5M4NA6A

if [ "$(cat $HOME/.config/polybar/scripts/wifi/sct.sh | grep key=)" == "key=0" ]
	then
		cd $HOME/.config/polybar/scripts/wifi/ && sed "s/key=0/key=1/" sct.sh >> sct.tmp && mv sct.tmp sct.sh && chmod +x sct.sh
		$HOME/.config/polybar/scripts/wifi/sct.sh switch
	else
		cd $HOME/.config/polybar/scripts/wifi/ && sed "s/key=1/key=0/" sct.sh >> sct.tmp && mv sct.tmp sct.sh && chmod +x sct.sh
		$HOME/.config/polybar/scripts/wifi/sct.sh switch
fi
