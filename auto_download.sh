#!/bin/bash
# ---------------------------------------------------------
# Script Name : auto_download.sh
# Purpose     : Download a file using wget or curl
# Author      : Your Name
# Date        : 18-11-2025
# ---------------------------------------------------------

URL="$1"
SAVE_DIR="$HOME/downloads"

# Check input
if [ -z "$URL" ]; then
    echo "Usage: bash auto_download.sh <URL>"
    exit 1
fi

# Create directory if missing
mkdir -p "$SAVE_DIR"

echo "Downloading file..."

# Using wget (simplest)
wget -P "$SAVE_DIR" "$URL"

# Alternative:
# curl -O "$URL"

echo "File saved in: $SAVE_DIR"