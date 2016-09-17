#!/bin/bash

if [[ $(xrandr | grep -w connected | wc -l) = 2 ]];
then
	cat ~/.conkyrc.dual > ~/.conkyrc
else
	cat ~/.conkyrc.single > ~/.conkyrc
fi

sleep 15
conky
