#!/bin/bash

# Directories
SOURCE_DIR="$HOME/git_task"
BACKUP_DIR="$HOME/Backups"

# Make sure backup directory exists
mkdir -p "$BACKUP_DIR"

# Backup filename
DATE=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/Documents_$DATE.tar.gz"

# Create backup
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

echo "Backup created: $BACKUP_FILE"
