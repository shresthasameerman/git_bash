#!/bin/bash

# Check if the correct argument (day or week) is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <day|week>"
    exit 1
fi

timeframe="$1"

# Determine the time period for filtering
if [ "$timeframe" == "day" ]; then
    # Get logins from the last 24 hours
    echo "Users who logged in during the last day:"
    last | awk '$NF ~ /still/ || ($NF ~ /-/ && ($6 == "day" || $6 == "days"))' | awk '{print $1}' | sort | uniq
elif [ "$timeframe" == "week" ]; then
    # Get logins from the last 7 days
    echo "Users who logged in during the last week:"
    last | awk '{print $1, $(NF-3), $(NF-2), $(NF-1)}' | sort | uniq
else
    echo "Invalid argument. Use 'day' or 'week'."
    exit 1
fi
