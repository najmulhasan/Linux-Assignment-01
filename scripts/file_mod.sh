#!/bin/bash

# Create example.txt in home directory
touch ~/example.txt

# Create new user without home and shell
sudo useradd -M -s /usr/sbin/nologin student

# Create student group
sudo groupadd student

# Change owner of example.txt to student
sudo chown student:student ~/example.txt

# Verify changes
ls -l ~/example.txt