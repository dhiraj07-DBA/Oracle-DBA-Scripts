/*
====================================================
Script Name : redo_generation.sql
Purpose     : Redo Generation
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT ROUND(value/1024/1024,2) REDO_MB
FROM v$sysstat
WHERE name='redo size';
