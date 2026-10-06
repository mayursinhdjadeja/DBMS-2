/*
    Write a procedure that searches whether the given employee id is present or not in the table. 
    If an employee is found then show its name otherwise raise appropriate error messages 
    (Use both IN and OUT mode variables) and also write a PL/SQL block to call the procedure.
*/

SET SERVEROUTPUT ON;
DECLARE 
    V_EID NUMBER := &EID;
    V_ENAME VARCHAR2(50);
BEGIN
    search_emplyee(V_EID, V_ENAME);
    IF V_ENAME IS NOT NULL THEN
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE NAME:' || E_NAME);
    END IF;
END;
/
