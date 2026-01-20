#!/bin/bash

echo "hostname: $(hostname)"
echo "kernal info: $(uname -a)"
echo "system uptime: $(uptime)"
echo "running processes:"
top -b -n 1

echo "disk usage:"
df -h
echo "memory usage:"
free -m
