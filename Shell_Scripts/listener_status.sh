#!/bin/bash
##############################################################################
# Script Name : listener_status.sh
# Purpose     : Check Oracle Listener Status
# Author      : Dheeraj Kumar
##############################################################################

echo "=========================================="
echo "LISTENER STATUS REPORT"
echo "=========================================="

lsnrctl status

echo ""
echo "Listener Check Completed"
