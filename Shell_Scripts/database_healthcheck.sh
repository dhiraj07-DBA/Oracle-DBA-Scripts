#!/bin/bash
##############################################################################
# Script Name : database_healthcheck.sh
# Purpose     : Oracle Database Health Check
# Author      : Dheeraj Kumar
# Oracle Ver  : 19c
##############################################################################

DATE=$(date '+%d-%b-%Y %H:%M:%S')

echo "===================================================="
echo "DATABASE HEALTH CHECK REPORT"
echo "Generated On : $DATE"
echo "===================================================="

echo ""
echo "Server Uptime"
uptime

echo ""
echo "Filesystem Usage"
df -h

echo ""
echo "Memory Usage"
free -m

echo ""
echo "Top CPU Consuming Processes"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head

echo ""
echo "Oracle PMON Processes"
ps -ef | grep pmon | grep -v grep

echo ""
echo "Health Check Completed"
