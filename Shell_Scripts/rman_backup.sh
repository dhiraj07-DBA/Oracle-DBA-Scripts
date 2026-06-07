#!/bin/bash
##############################################################################
# Script Name : rman_backup.sh
# Purpose     : Full Database Backup Using RMAN
# Author      : Dheeraj Kumar
##############################################################################

export ORACLE_SID=PROD
export ORACLE_HOME=/u01/app/oracle/product/19c/dbhome_1

DATE=$(date +%Y%m%d)

$ORACLE_HOME/bin/rman target / <<EOF

RUN
{
BACKUP DATABASE
FORMAT '/backup/FULL_DB_%d_$DATE_%U.bkp';

BACKUP ARCHIVELOG ALL
FORMAT '/backup/ARCH_%d_$DATE_%U.bkp';

BACKUP CURRENT CONTROLFILE
FORMAT '/backup/CTRL_%d_$DATE.bkp';
}

EXIT;
EOF
