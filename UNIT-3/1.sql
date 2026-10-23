-- Write a PL/SQL block that explains the use of the ZERO_DIVIDE exception. 

DECLARE
    NUM1 NUMBER := 10;
    NUM2 NUMBER := 0;
    RESULT NUMBER;
BEGIN
    RESULT := NUM1 / NUM2;
    DBMS_OUTPUT.PUT_LINE('Result = ' || RESULT);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Cannot divide by zero.');
END;
/