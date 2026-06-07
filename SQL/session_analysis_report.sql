/*
====================================================
Script Name : session_analysis_report.sql
Purpose     : Session Analysis Report
Author      : Dheeraj Kumar
Oracle Ver  : 19c
====================================================
*/

PROMPT ===== Active Sessions =====

SELECT sid,
       serial#,
       username,
       machine,
       status
FROM v$session
WHERE status='ACTIVE';

PROMPT ===== Session Count =====

SELECT status,
       COUNT(*)
FROM v$session
GROUP BY status;

PROMPT ===== Blocking Sessions =====

SELECT sid,
       serial#,
       username,
       blocking_session
FROM v$session
WHERE blocking_session IS NOT NULL;

PROMPT ===== Top Users =====

SELECT username,
       COUNT(*)
FROM v$session
WHERE username IS NOT NULL
GROUP BY username
ORDER BY 2 DESC;
