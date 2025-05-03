#!/bin/bash

# this is a Automated Database Backup Script
# This Bash script is use to back up a MySQL or PostgreSQL database with timestamped filenames.

db_user="root"
db_pass="your_password"
db_name="mydatabase"
backup_dir="$HOME/db_backups"

mkdir -p "$backup_dir"

filename="$backup_dir/${db_name}_$(date +%Y%m%d_%H%M%S).sql"

mysqldump -u "$db_user" -p"$db_pass" "$db_name" > "$filename"

if [ $? -eq 0 ]; then
  echo "Backup successful: $filename"
else
  echo "Backup failed!"
fi
