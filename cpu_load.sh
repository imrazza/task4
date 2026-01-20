#!/bin/bash

CPU_LOAD=$(uptime | awk '{print $(NF-2)}' | sed 's/,//')
if (( $(echo "$CPU_LOAD > 2.0" | bc -l) )); then
        echo "high cpu load: $CPU_LOAD"

else
        echo "cpu load is normal: $CPU_LOAD"
fi

echo "checking disk space after every 5 seconds"

while true; do
        df -h /
        sleep 5
done
