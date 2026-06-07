#!/bin/bash
##############################################################################
# Script Name : alert_log_monitor.sh
# Purpose     : Monitor Oracle Alert Log
# Author      : Dheeraj Kumar
##############################################################################

ALERT_LOG=$ORACLE_BASE/diag/rdbms/*/*/trace/alert_*.log

echo "=========================================="
echo "LATEST ALERT LOG ENTRIES"
echo "=========================================="

tail -50 $ALERT_LOG
