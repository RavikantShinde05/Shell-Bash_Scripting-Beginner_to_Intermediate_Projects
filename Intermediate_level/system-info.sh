#!/bin/bash

# This is a simple System-Info Tool

while true; do
  echo "System Info Tool"
  echo "1. CPU Info"
  echo "2. Memory Usage"
  echo "3. Disk Usage"
  echo "4. Exit"
  read -p "Choose an option: " opt

  case $opt in
    1) lscpu ;;
    2) free -h ;;
    3) df -h ;;
    4) break ;;
    *) echo "Invalid option" ;;
  esac
done
