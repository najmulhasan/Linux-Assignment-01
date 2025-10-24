#!/bin/bash

# List contents of home directory and save to home_list.txt
ls -la ~/ > ~/home_list.txt

# Change to /var/log and list contents to var_log.txt
cd /var/log
ls -la > ~/var_log.txt

# Display path to bash executable
which bash

# Display current shell
echo $SHELL