/*
====================================================
Script Name : locked_accounts.sql
Purpose     : Locked Users
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT username,
account_status
FROM dba_users
WHERE account_status LIKE '%LOCK%';
