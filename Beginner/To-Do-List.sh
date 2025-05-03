#!/bin/bash

file="$HOME/todo.txt"

echo "1. View To-Do List"
echo "2. Add Task"
echo "3. Remove Task"
read -p "Choose an option: " choice

case $choice in
  1)
    cat -n "$file"
    ;;
  2)
    read -p "Enter new task: " task
    echo "$task" >> "$file"
    ;;
  3)
    cat -n "$file"
    read -p "Enter task number to remove: " num
    sed -i "${num}d" "$file"
    ;;
  *)
    echo "Invalid option"
    ;;
esac
