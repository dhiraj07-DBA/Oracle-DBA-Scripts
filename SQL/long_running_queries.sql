/*
====================================================
Script Name : long_running_queries.sql
Purpose     : Long Running Queries
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT sid,
serial#,
username,
sql_id,
event
FROM v$session
WHERE status='ACTIVE';
