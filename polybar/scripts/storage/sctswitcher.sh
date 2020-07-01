#!/bin/bash
# SCT POLYBAR BRIDGE, AUTHOR ON https://t.me/O5M4NA6A

if [ "$(cat $HOME/.config/polybar/scripts/storage/sct.sh | grep key=)" == "key=0" ]
	then
		cd $HOME/.config/polybar/scripts/storage/ && sed "s/key=0/key=1/" sct.sh >> sct.tmp && mv sct.tmp sct.sh && chmod +x sct.sh
		$HOME/.config/polybar/scripts/storage/sct.sh switch
	else
		cd $HOME/.config/polybar/scripts/storage/ && sed "s/key=1/key=0/" sct.sh >> sct.tmp && mv sct.tmp sct.sh && chmod +x sct.sh
		$HOME/.config/polybar/scripts/storage/sct.sh switch
fi
