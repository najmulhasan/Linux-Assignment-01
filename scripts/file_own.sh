#!/bin/bash

# Create project directory
mkdir -p ~/project

# Create report.txt inside project
touch ~/project/report.txt

# Set permissions for report.txt (644 = rw-r--r--)
chmod 644 ~/project/report.txt

# Set permissions for project directory (755 = rwxr-xr-x)
chmod 755 ~/project

# Verify changes
ls -ld ~/project
ls -l ~/project/report.txt