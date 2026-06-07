#!/bin/bash
##############################################################################
# Script Name : tablespace_alert.sh
# Purpose     : Tablespace Utilization Report
# Author      : Dheeraj Kumar
##############################################################################

sqlplus -s / as sysdba <<EOF

set pages 100
set lines 200

SELECT tablespace_name,
       ROUND(used_percent,2) USED_PERCENT
FROM dba_tablespace_usage_metrics
ORDER BY used_percent DESC;

EXIT;
EOF
