/*
    Write a procedure that search‟s whether the given employee number is present or not in the table. 
    (Use both IN and OUT mode variables) and also Write a PL/SQL block to call the SEARCH_EMP procedure.
*/

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE search_employee
(
    P_EMPNO IN NUMBER,
    P_RESULT OUT VARCHAR2
)
IS
    V_COUNT NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO V_COUNT
    FROM EMP
    WHERE EID = P_EMPNO;

    IF V_COUNT > 0 THEN
        P_RESULT := 'Employee Found';
    ELSE
        P_RESULT := 'Employee Not Found';
    END IF;
END;
/