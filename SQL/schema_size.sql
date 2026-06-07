/*
====================================================
Script Name : schema_size.sql
Purpose     : Schema Size
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT owner,
ROUND(SUM(bytes)/1024/1024,2) SIZE_MB
FROM dba_segments
GROUP BY owner
ORDER BY 2 DESC;
