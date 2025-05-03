#!/bin/bash
# disk_alert.sh


# This Script sends us a warning, if disk usage exceeds a certain percentage.
threshold=80

usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$usage" -gt "$threshold" ]; then
    echo "Warning: Disk usage is above $threshold% (Currently: $usage%)"
else
    echo "Disk usage is under control. ($usage%)"
fi
