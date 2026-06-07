/*
====================================================
Script Name : schema_healthcheck.sql
Purpose     : Schema Health Check
Author      : Dheeraj Kumar
Oracle Ver  : 19c
====================================================
*/

PROMPT ===== Schema Size =====

SELECT owner,
       ROUND(SUM(bytes)/1024/1024,2) SIZE_MB
FROM dba_segments
GROUP BY owner
ORDER BY 2 DESC;

PROMPT ===== Object Count =====

SELECT owner,
       object_type,
       COUNT(*)
FROM dba_objects
GROUP BY owner,object_type
ORDER BY owner;

PROMPT ===== Invalid Objects =====

SELECT owner,
       object_name,
       object_type
FROM dba_objects
WHERE status='INVALID';

PROMPT ===== User Accounts =====

SELECT username,
       account_status,
       created
FROM dba_users;
