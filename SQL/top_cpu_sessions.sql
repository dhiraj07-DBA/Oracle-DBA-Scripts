/*
====================================================
Script Name : top_cpu_sessions.sql
Purpose     : 
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT sid,
serial#,
username
FROM v$session
WHERE status='ACTIVE';
