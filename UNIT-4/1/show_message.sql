/*
    Write a simple procedure without any parameter that shows a user defined message on the screen. 
    Call the procedure using a separate PL/SQL block and on the command line.
*/

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE show_message
IS 
BEGIN
    DBMS_OUTPUT.PUT_LINE('WELCOM TO PL/SQL PROGRAMMING');
END;
/