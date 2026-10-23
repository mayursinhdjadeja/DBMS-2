/*
    Write a procedure that search‟s whether the given employee number is present or not in the table. 
    (Use both IN and OUT mode variables) and also Write a PL/SQL block to call the SEARCH_EMP procedure.
*/

DECLARE
    V_RESULT VARCHAR2(30);
BEGIN
    search_employee(109, V_RESULT);
    DBMS_OUTPUT.PUT_LINE(V_RESULT);
END;
/
