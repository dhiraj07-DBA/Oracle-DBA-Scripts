/*
====================================================
Script Name : backup_monitoring_report.sql
Purpose     : RMAN Backup Monitoring Report
Author      : Dheeraj Kumar
Oracle Ver  : 19c
====================================================
*/

PROMPT ===== RMAN Backup Status =====

SELECT
SESSION_KEY,
INPUT_TYPE,
STATUS,
START_TIME,
END_TIME
FROM v$rman_backup_job_details
ORDER BY START_TIME DESC;

PROMPT ===== Archive Logs =====

SELECT
TRUNC(completion_time),
COUNT(*)
FROM v$archived_log
GROUP BY TRUNC(completion_time)
ORDER BY 1 DESC;

PROMPT ===== Database Size =====

SELECT
ROUND(SUM(bytes)/1024/1024/1024,2) DB_SIZE_GB
FROM dba_data_files;

PROMPT ===== FRA Usage =====

SELECT
name,
space_limit/1024/1024 MB_LIMIT,
space_used/1024/1024 MB_USED
FROM v$recovery_file_dest;
