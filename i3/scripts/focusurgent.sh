#!/bin/zsh

while;
		do
				workspace=$(i3-msg -t get_workspaces | python3 ~/Documents/configs/i3/scripts/geturgent.py)
				if [[ -n $workspace ]]; then
						i3-msg workspace number $workspace
				fi 
				sleep 1;
		done
