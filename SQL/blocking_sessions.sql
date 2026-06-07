/*
====================================================
Script Name : blocking_sessions.sql
Purpose     : Check Blocking Sessions
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT blocking_session,
sid,
serial#,
username
FROM v$session
WHERE blocking_session IS NOT NULL;
