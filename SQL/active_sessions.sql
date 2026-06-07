/*
====================================================
Script Name : active_sessions.sql
Purpose     : Check Active Database Sessions
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT sid,
       serial#,
       username,
       status,
       machine
FROM v$session
WHERE status='ACTIVE';
