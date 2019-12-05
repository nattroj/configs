pacmd set-default-sink $1

pacmd list-sink-inputs | grep -Po '(?<=index: )\d+' | while read -r line ; do pacmd move-sink-input $line $1 ; done
