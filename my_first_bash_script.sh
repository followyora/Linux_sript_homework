#!/bin/bash

echo "Date: $(date)"

echo "Hello, $USER!"

current_directory=$(pwd)
echo "Current directory: $current_directory"


process_count=$(ps -ef | grep -v "UID" | wc -1)
echo "Numbers of processes: $process_count"


echo "Last 5 process:"
ps -ef | tail +2 | tail -n 5

echo "Names of processes"
ps -ef | awk '{print $NF}'
