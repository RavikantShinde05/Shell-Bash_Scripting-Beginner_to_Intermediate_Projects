#!/bin/bash
# Create a script that backs up a directory like Documents into a .tar.gz file with a timestamp.
# backup.sh

echo " Starting backup."

# choose the desired/target directory which is to be Back-up for the Future prevention
src="$HOME/Documents"

dest="$HOME/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$dest" "$src"

echo "Backup completed at $dest"
