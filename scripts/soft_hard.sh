#!/bin/bash

# Create original.txt
echo "Original file content" > ~/original.txt

# Create symbolic link
ln -s ~/original.txt ~/softlink.txt

# Verify symbolic link
ls -l ~/softlink.txt

# Delete original file
rm ~/original.txt

# Verify symbolic link status
ls -l ~/softlink.txt

# Create datafile.txt
echo "Data file content" > ~/datafile.txt

# Create hard link
ln ~/datafile.txt ~/hardlink.txt

# Verify hard link
ls -l ~/hardlink.txt

# Display inodes
ls -i ~/datafile.txt ~/hardlink.txt

# Delete original datafile
rm ~/datafile.txt

# Verify hard link status
ls -l ~/hardlink.txt

# Find all .txt files and save to file_list.txt
find ~/ -type f -name "*.txt" > ~/file_list.txt