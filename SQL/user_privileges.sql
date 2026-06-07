/*
====================================================
Script Name : user_privileges.sql
Purpose     : Check User System Privileges
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT *
FROM dba_sys_privs
WHERE grantee='SCOTT';
