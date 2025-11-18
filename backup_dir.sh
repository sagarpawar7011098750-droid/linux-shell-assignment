#!/bin/bash
# ---------------------------------------------------------
# Script Name : backup_dir.sh
# Purpose     : Copy a directory into a backup folder with timestamp
# Author      : Sagar Pawar
# ---------------------------------------------------------

SOURCE_DIR="z"             # Directory to back up
BACKUP_PARENT="$HOME/backups"   # Backup storage

# Check if directory exists
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory not found!"
    exit 1
fi

# Create backup folder if not present
mkdir -p "$BACKUP_PARENT"

# Create timestamp
TIME=$(date +"%Y-%m-%d_%H-%M-%S")

# Backup path
BACKUP_PATH="$BACKUP_PARENT/backup_$TIME"

# Copy directory
cp -r "$SOURCE_DIR" "$BACKUP_PATH"

echo "Backup created at: $BACKUP_PATH"