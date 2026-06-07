/*
====================================================
Script Name : tablespace_growth_report.sql
Purpose     : Tablespace Utilization Report
Author      : Dheeraj Kumar
Oracle Ver  : 19c
====================================================
*/

COLUMN TABLESPACE_NAME FORMAT A25

SELECT
tablespace_name,
ROUND(used_space*8/1024,2) USED_MB,
ROUND(tablespace_size*8/1024,2) TOTAL_MB,
ROUND(used_percent,2) USED_PERCENT
FROM dba_tablespace_usage_metrics
ORDER BY used_percent DESC;

SELECT
file_name,
tablespace_name,
ROUND(bytes/1024/1024,2) SIZE_MB,
autoextensible
FROM dba_data_files
ORDER BY tablespace_name;
