-- Write a PL/SQL block to display data with the use of LIKE Operator using cursor FOR Loop. 

SET SERVEROUTPUT ON;
DECLARE
    CURSOR C_EMPL IS
        SELECT EMPNO, ENAME, SALARY, DEPTNO
        FROM EMPL
        WHERE ENAME LIKE 'R%';
BEGIN
    FOR REC IN C_EMPL
    LOOP
        DBMS_OUTPUT.PUT_LINE
        (
            'EMPNO: ' || REC.EMPNO ||
            '  ENAME: ' || REC.ENAME ||
            '  SALARY: ' || REC.SALARY ||
            '  DEPTNO: ' || REC.DEPTNO
        );
    END LOOP;
END;
/