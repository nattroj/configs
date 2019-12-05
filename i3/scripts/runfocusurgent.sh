#!/bin/zsh
pkill focusurgent.sh

while pgrep -x focusurgent.sh;
		do
				sleep 1;
		done

/home/nrojanasupya/Documents/configs/i3/scripts/focusurgent.sh &
