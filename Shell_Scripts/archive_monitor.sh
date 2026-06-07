#!/bin/bash
##############################################################################
# Script Name : archive_monitor.sh
# Purpose     : Archive Log Destination Monitoring
# Author      : Dheeraj Kumar
##############################################################################

ARCH_DEST=/u01/archive

echo "=========================================="
echo "ARCHIVE DESTINATION USAGE"
echo "=========================================="

df -h $ARCH_DEST

echo ""
echo "Archive Files Count"

find $ARCH_DEST -type f | wc -l
