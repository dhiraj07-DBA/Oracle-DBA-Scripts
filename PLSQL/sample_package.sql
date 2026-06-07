CREATE OR REPLACE PACKAGE test_pkg AS
   PROCEDURE show_message;
END test_pkg;
/

CREATE OR REPLACE PACKAGE BODY test_pkg AS
   PROCEDURE show_message IS
   BEGIN
      DBMS_OUTPUT.PUT_LINE('Hello Oracle');
   END;
END test_pkg;
/
