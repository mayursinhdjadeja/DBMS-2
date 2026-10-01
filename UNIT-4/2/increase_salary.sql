/*
    Write a simple procedure that increases the basic salary of employees for the given department number 
    by percentage inputted by the user using the IN parameter.
*/

SET SERVEROUTPUT ON;
CREATE OR REPLACE PROCEDURE increase_salary (p_deptno IN NUMBER, p_percent IN NUMBER)
IS
BEGIN
    UPDATE EMP
    SET SAL = SAL + (SAL * p_percent / 100)
    WHERE DEPTNO = p_deptno;
    DBMS_OUTPUT.PUT_LINE('SALARY UPDATED SUCCESSFULLY.');
END;
/