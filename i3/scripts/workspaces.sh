echo $1
i3-msg $(i3-msg -t get_workspaces | python3 ~/.config/i3/scripts/workspaces.py $1)
