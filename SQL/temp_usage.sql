/*
====================================================
Script Name : temp_usage.sql
Purpose     : Temp Tablespace Usage
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT tablespace_name,
SUM(blocks)*8/1024 MB_USED
FROM v$tempseg_usage
GROUP BY tablespace_name;
