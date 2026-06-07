/*
====================================================
Script Name : database_healthcheck.sql
Purpose     : Complete Database Health Check Report
Author      : Dheeraj Kumar
Oracle Ver  : 19c
====================================================
*/

PROMPT ==========================================
PROMPT DATABASE INFORMATION
PROMPT ==========================================

SELECT name,
       open_mode,
       database_role,
       log_mode
FROM v$database;

PROMPT ==========================================
PROMPT INSTANCE INFORMATION
PROMPT ==========================================

SELECT instance_name,
       host_name,
       version,
       status
FROM v$instance;

PROMPT ==========================================
PROMPT TABLESPACE USAGE
PROMPT ==========================================

SELECT tablespace_name,
       ROUND(used_percent,2) used_percent
FROM dba_tablespace_usage_metrics
ORDER BY used_percent DESC;

PROMPT ==========================================
PROMPT INVALID OBJECTS
PROMPT ==========================================

SELECT owner,
       object_type,
       COUNT(*)
FROM dba_objects
WHERE status='INVALID'
GROUP BY owner,object_type;
