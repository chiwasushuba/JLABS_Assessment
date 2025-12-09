#!/bin/bash

target="/"

echo "Monitoring $target. Press Ctrl + C to stop"

while true; do

	usage=$(df -h "$target" | awk 'NR==2 {print $5}' | tr -d '%')

	if [ "$usage" -ge 80 ]; then
		echo "Warning: Disk usage on $target is at ${usage}%"
	else 	
		echo "Below threshold"	
	fi  
	
	sleep 60
done




