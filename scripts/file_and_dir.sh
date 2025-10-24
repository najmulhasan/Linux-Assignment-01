#!/bin/bash

# Create linux_fundamentals directory in home
mkdir -p ~/linux_fundamentals

# Create scripts subdirectory
mkdir -p ~/linux_fundamentals/scripts

# Create backup directory
mkdir -p ~/linux_fundamentals/backup

# Create empty file
touch ~/linux_fundamentals/example.txt

# Copy file to scripts directory
cp ~/linux_fundamentals/example.txt ~/linux_fundamentals/scripts/

# Move original file to backup
mv ~/linux_fundamentals/example.txt ~/linux_fundamentals/backup/

# Change permissions (644 = rw-r--r--)
chmod 644 ~/linux_fundamentals/backup/example.txt

# Verify permissions
ls -l ~/linux_fundamentals/backup/example.txt