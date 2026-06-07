/*
Professional PL/SQL Script
*/

DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM dba_users;

    DBMS_OUTPUT.PUT_LINE('Total Users : ' || v_count);
END;
/
