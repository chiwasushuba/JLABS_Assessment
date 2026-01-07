#!/bin/bash

threshold=80

USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')


if [ "$USAGE" -gt "$threshold" ]; then
        echo "Warning: Disk Usage exceeds 80% capacity and is at ${USAGE}%."
else
        echo "Disk usage is below 80% threshold at ${USAGE}."
fi
