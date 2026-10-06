/*
    Write a procedure that searches whether the given employee id is present or not in the table. 
    If an employee is found then show its name otherwise raise appropriate error messages 
    (Use both IN and OUT mode variables) and also write a PL/SQL block to call the procedure.
*/

CREATE OR REPLACE PROCEDURE search_employee
(
    P_ID IN NUMBER,
    P_ENAME OUT VARCHAR2
)    
IS 
BEGIN
    SELECT ENAME INTO P_ENAME FROM EMP WHERE EID = P_EID;

EXCEPTION 
    WHEN NO_DATA FOUND THEN
        P_ENAME := NULL;
        DBMS_OUTPUT.PUT_LINE('ERROR: EMPLOYEE ID' || P_EID || 'NOT FOUND.');

    WHEN TOO_MANY_ROWS THEN
        P_ENAME := NULL;
        DBMS_OUTPUT.PUT_LINE('ERROR: MORE THAN ONE EMPLOYEE FOUND.');

END;
/