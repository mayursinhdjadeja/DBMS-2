-- Write a function that returns the balance for a given account number. 

SET SERVEROUTPUT ON;
DECLARE
    V_RESULT NUMBER;
BEGIN
    V_RESULT := GET_BALANCE(101);
    DBMS_OUTPUT.PUT_LINE('Account Balance = ' || V_RESULT);
END;
/
