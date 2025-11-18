#!/bin/bash
# ---------------------------------------------------------
# Script Name : monitor_resources.sh
# Purpose     : Log CPU & Memory usage every 5 seconds
# Author      : Sagar Pawar
# ---------------------------------------------------------

LOGFILE="$HOME/usage.log"
INTERVAL=5

echo "Logging started..."
echo "----------------------------" >> "$LOGFILE"

while true
do
    TIME=$(date +"%Y-%m-%d %H:%M:%S")

    # Getting CPU usage (basic method)
    CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

    # Getting Memory usage (basic method)
    MEM=$(free | grep Mem | awk '{print $3}')

    echo "$TIME | CPU: $CPU | MEM Used: $MEM KB" >> "$LOGFILE"

    sleep $INTERVAL
Done