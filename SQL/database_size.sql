/*
====================================================
Script Name : database_size.sql
Purpose     : Check Database Size in GB
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT ROUND(SUM(bytes)/1024/1024/1024,2) AS DB_SIZE_GB
FROM dba_data_files;
