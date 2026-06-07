#!/bin/bash
##############################################################################
# Script Name : oracle_process_monitor.sh
# Purpose     : Monitor Oracle Background Processes
# Author      : Dheeraj Kumar
##############################################################################

echo "=========================================="
echo "ORACLE BACKGROUND PROCESSES"
echo "=========================================="

ps -ef | egrep "pmon|smon|dbw|lgwr|ckpt" | grep -v grep
