/*
====================================================
Script Name : session_count.sql
Purpose     : Total Sessions
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT status,
COUNT(*)
FROM v$session
GROUP BY status;
