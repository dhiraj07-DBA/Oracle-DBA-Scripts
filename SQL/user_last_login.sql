/*
====================================================
Script Name : user_last_login.sql
Purpose     : Last Login Details
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT username,
account_status,
last_login
FROM dba_users;
