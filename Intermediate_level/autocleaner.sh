#!/bin/bash
# auto_cleaner.sh

# This is just a simple AutoCleaner for Temp/ Temporary files

target="/tmp"
days_old=3

find "$target" -type f -mtime +$days_old -exec rm -f {} \;
echo "Deleted files older than $days_old days from $target"
