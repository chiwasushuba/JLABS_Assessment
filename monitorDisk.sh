#!/bin/bash

threshold=80

USAGE=$(df --output=pcent / | tail -1 | tr -dc '0-9')

if [ "$USAGE" -gt "$threshold" ]; then
        echo "Warning: Disk Usage exceeds 80% capacity and is at ${USAGE}%."
else
        echo "Safe: Disk usage is below 80% threshold at ${USAGE}%."
fi
