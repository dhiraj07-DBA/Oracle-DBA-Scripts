/*
====================================================
Script Name : archive_log_generation.sql
Purpose     : Check Archive Log Generation Day-wise
Author      : Dheeraj Kumar
Oracle Ver  : 19c
Created On  : 07-Jun-2026
====================================================
*/

SELECT TRUNC(completion_time) AS archive_date,
       COUNT(*) AS archive_count
FROM v$archived_log
GROUP BY TRUNC(completion_time)
ORDER BY 1;
