#!/bin/bash

driver=$(lspci -k | grep -EA3 'VGA|3D' | grep 'Kernel driver in use' | awk '{print $5}')
version=$(modinfo nvidia | grep ^version | awk '{print $2}')

# echo "$driver - $version"
tooltip="Driver: $driver\nVersion: $version"

while true; do
	temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits)
	temp_icon=""

	if (( temp >= 80 )); then 
		temp_icon=""
	elif (( temp >= 70 )); then 
		temp_icon=""
	elif (( temp >= 50 )); then 
		temp_icon=""
	else
		temp_icon=""
	fi

	echo "{\"text\":\"$temp°C $temp_icon\", \"tooltip\": \"$tooltip\"}"

	sleep 5
done

