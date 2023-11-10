#!/bin/bash

cpu_percentage=$(top -bn1 | grep "%Cpu(s):" | awk '{print $2}' | cut -d. -f1)

echo "CPU Percentage: $cpu_percentage%"

