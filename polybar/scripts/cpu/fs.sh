#!/bin/bash
deneme=1
if [ $deneme == "1" ]
	then
		echo " $[100-$(vmstat 1 2|tail -1|awk '{print $15}')]% "
	else
		echo " $[100-$(vmstat 1 2|tail -1|awk '{print $15}')]%          $(lscpu | grep 'İşlemci MHz' | awk '{print $3}'| awk -F\. '{print $1}' | sed 's/./&/1') MHz "
fi
