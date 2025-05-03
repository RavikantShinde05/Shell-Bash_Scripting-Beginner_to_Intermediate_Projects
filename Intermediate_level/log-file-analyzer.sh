#!/bin/bash
# log_analyzer.sh

# choose the targeted file and location of the file precisely
logfile="/var/log/apache2/access.log"

echo "Top 5 IP addresses:"
awk '{print $1}' "$logfile" | sort | uniq -c | sort -nr | head -5

echo -e "\nTotal requests: $(wc -l < "$logfile")"

echo -e "\nNumber of 404 errors:"
grep "404" "$logfile" | wc -l
