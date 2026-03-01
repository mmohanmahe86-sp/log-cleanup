#!/bin/bash

LOG_DIR="/var/log"
DAYS=7

echo "===== Log Cleanup Started by Dev B ====="
date

echo "Removing logs older than $DAYS days..."

find $LOG_DIR -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo "Cleanup completed"
date

echo "Disk usage after cleanup:"
df -h


