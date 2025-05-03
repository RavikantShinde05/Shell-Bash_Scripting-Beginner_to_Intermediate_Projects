#!/bin/bash
# process_monitor.sh

# this is basically a process monitor with an alert for the user/admin.
process="nginx"

if pgrep "$process" > /dev/null; then
    echo "$process is running."
else
    echo "$process is NOT running! Sending alert."

    # You could also use `mail` or `sendmail` to send an email
    echo "$process down on $(date)" >> /var/log/process_monitor.log
fi
