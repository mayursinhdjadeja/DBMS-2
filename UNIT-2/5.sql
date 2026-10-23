/*
    Write a PL/SQL block using a parameterized cursor that displays the department wise 
    basic salary of each employee and department wise total gross salary. 
    (Parameterized Cursor and Use Cursor For Loop) 
*/

CREATE TABLE EMP
(
    EMPNO NUMBER(4),
    ENAME VARCHAR2(20),
    SALARY NUMBER(8,2),
    DEPTNO NUMBER(2)
);

INSERT INTO EMPL VALUES (071, 'Harsh', 85000, 10);
INSERT INTO EMPL VALUES (074, 'Mayursinh', 65000, 20);
COMMIT;

SET SERVEROUTPUT ON;
DECLARE
    CURSOR c_emp(p_deptno NUMBER) IS
        SELECT ENAME, SALARY
        FROM EMPL
        WHERE DEPTNO = p_deptno
    v_total NUMBER;
BEGIN
    FOR d IN (SELECT DISTINCT DEPTNO FROM EMPL ORDER BY DEPTNO) LOOP
        v_total := 0;
        DBMS_OUTPUT.PUT_LINE('Department No : ' || d.DEPTNO);
        FOR emp_rec IN c_emp(d.DEPTNO) LOOP
            DBMS_OUTPUT.PUT_LINE('Employee Name : ' || emp_rec.ENAME);
            DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || emp_rec.SALARY);
            v_total := v_total + emp_rec.SALARY;
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('Department Total Salary : ' || v_total);
    END LOOP;
END;
/