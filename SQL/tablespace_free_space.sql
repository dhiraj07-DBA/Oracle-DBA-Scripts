/*
====================================================
Script Name : tablespace_free_space.sql
Purpose     : Free Space in Tablespaces
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT tablespace_name,
ROUND(SUM(bytes)/1024/1024,2) FREE_MB
FROM dba_free_space
GROUP BY tablespace_name;
