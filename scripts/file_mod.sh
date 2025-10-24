#!/bin/bash

# Create example.txt in home directory
touch ~/example.txt

# Create new user without home and shell
sudo useradd -M -s /usr/sbin/nologin student 2>/dev/null || echo "User student already exists"

# Create student group if it doesn't exist
sudo groupadd student 2>/dev/null || echo "Group student already exists"

# Change owner of example.txt to student
sudo chown student:student ~/example.txt

# Verify changes
ls -l ~/example.txt