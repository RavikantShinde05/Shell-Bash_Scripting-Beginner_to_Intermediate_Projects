#!/bin/bash

echo " WELCOME TO THE SYSTEM_STATS "

sleep 1

echo " Please Enter your $NAME: "

read $NAME

sleep 1

echo " hi! $NAME "

sleep 1 

echo " Here are the SYSTEM_STATS "

date | awk '{ print " Today is: " $3 "st - " $2 " ; Day = " $1 " ; Time: " $4 }'

echo " Disk Space : "

df -H | xargs | awk '{ print " Disk Space Available: " "Free/Used: " $10 "/" $9 " :GB" }'

echo " User Uptime: "

uptime

echo " Last Login Details "

last | head -5

echo " Currently Connected "

w 

echo " THANK YOU "