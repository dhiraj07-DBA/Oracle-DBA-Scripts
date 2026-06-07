/*
====================================================
Script Name : invalid_objects.sql
Purpose     : List Invalid Database Objects
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT owner,
       object_name,
       object_type
FROM dba_objects
WHERE status='INVALID';
