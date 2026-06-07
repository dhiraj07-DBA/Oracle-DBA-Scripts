/*
====================================================
Script Name : object_count.sql
Purpose     : Object Count
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT owner,
COUNT(*)
FROM dba_objects
GROUP BY owner
ORDER BY 2 DESC;
