#!/bin/bash

echo "Welcome to Random Password Generator"

sleep 2

echo "Enter the Length of the PassWord"
read $PASS_LENGTH

for p in $(seq 1 6 );
do 
    openssl rand -base64 48 | cut-c1 -$PASS_LENGTH

done
