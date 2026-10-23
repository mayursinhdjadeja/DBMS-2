/*
    Write a simple procedure without any parameter that updates the values in the EMP table. 
*/

CREATE OR REPLACE PROCEDURE update_emp
IS
BEGIN
    UPDATE EMP
    SET SAL = SAL * 1.10
    WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) updated.');
    COMMIT;
END;
/