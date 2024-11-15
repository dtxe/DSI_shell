#!/bin/bash
set -x

############################################
# DSI CONSULTING INC. Project setup script #
############################################
# This script creates standard analysis and output directories
# for a new project. It also creates a README file with the
# project name and a brief description of the project.
# Then it unzips the raw data provided by the client.

mkdir analysis output
touch README.md
touch analysis/main.py

# download client data
wget -O rawdata.zip https://github.com/UofT-DSI/shell/raw/refs/heads/assignment_rawdata/rawdata.zip
unzip rawdata.zip

###########################################
# Complete assignment here

# 1. Create a directory named data

# 2. Move the ./rawdata directory to ./data/raw

# 4. List the contents of the ./data/raw directory

# 5. In ./data/processed, create the following directories: server_logs, user_logs, and event_logs

# 6. Copy all server log files (files with "server" in the name AND a .log extension) from ./data/raw to ./data/processed/server_logs

# 7. Repeat the above step for user logs and event logs

# 8. Create a file named ./data/inventory.txt that lists all the files in the subfolders of ./data/processed

# 9. For user privacy, remove all files containing IP addresses (files with "ipaddr" in the filename) from ./data/raw and ./data/processed/user_logs



###########################################

echo "Project setup is complete!"
