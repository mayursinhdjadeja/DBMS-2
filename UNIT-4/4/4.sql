/*
    Write a function that returns the square of the given number. 
    Execute the function using a separate PL/SQL block and on the command line. 
*/

SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 5;
    V_SQUARE NUMBER;
BEGIN
    V_SQUARE := square_number(V_NUM);
    DBMS_OUTPUT.PUT_LINE('SQUARE = ' || V_SQUARE);
END;
/
