/*
Script Name : create_user.sql
Purpose     : Create New User
Author      : Dheeraj Kumar
*/

CREATE USER test_user
IDENTIFIED BY Oracle123
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp;

GRANT CREATE SESSION TO test_user;
