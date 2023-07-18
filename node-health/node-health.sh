#!/bin/bash

#############
# Author: Adarsh
# Date: 17/07/2023
#
# This script outputs the node health 
#
# Version: v1

set -x # debug mode
set -e # exit the script when there is an error
set -o # pipefail 


# Report file system disk space usage

df -h 

# Display free space and used space in the file system

free -g

# Display the number of cpu

nproc

# Display the id of the running process 'Slack'

ps -ef | grep slack | awk -F" " '{print $2}'
