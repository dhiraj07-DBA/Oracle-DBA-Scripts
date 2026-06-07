/*
====================================================
Script Name : tablespace_usage.sql
Purpose     : Check Tablespace Utilization
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT tablespace_name,
       ROUND(used_percent,2) AS used_percent
FROM dba_tablespace_usage_metrics;
