/*
====================================================
Script Name : datafile_details.sql
Purpose     : Datafile Information
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/
SELECT file_name,
tablespace_name,
bytes/1024/1024 MB
FROM dba_data_files;
