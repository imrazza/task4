#!/bin/bash

log_dir="/var/log"
find $log_dir -type f -mtime +7 -exec rm -f {} \;
echo "old logs deleted"
