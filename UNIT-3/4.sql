/*
    Write a PL/SQL block to display the salary of that employee whose age is 50 years otherwise 
    display appropriate messages using exception handling.
*/

SET SERVEROUTPUT ON;
DECLARE
    v_salary EMP.BasicSal%TYPE;
BEGIN
    SELECT BasicSal
    INTO v_salary
    FROM EMP
    WHERE Age = 50;
    DBMS_OUTPUT.PUT_LINE('Salary of employee aged 50: ' || v_salary);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No employee found with age 50.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Multiple employees found with age 50. Please refine your query.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Unexpected error: ' || SQLERRM);
END;
/