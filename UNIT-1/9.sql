-- Write a PL/SQL block which displays all records of Male employees working in the HR Dept from the EMP table.

SET SERVEROUTPUT ON;

BEGIN

    FOR EMP_REC IN
    (
        SELECT * FROM EMP WHERE GENDER = 'M' AND DEPTNAME = 'HR'
    )
    LOOP

        DBMS_OUTPUT.PUT_LINE('EID : ' || EMP_REC.EID);
        DBMS_OUTPUT.PUT_LINE('Name : ' || EMP_REC.ENAME);
        DBMS_OUTPUT.PUT_LINE('Dept No : ' || EMP_REC.DEPTNO);
        DBMS_OUTPUT.PUT_LINE('Dept Name : ' || EMP_REC.DEPTNAME);
        DBMS_OUTPUT.PUT_LINE('Gender : ' || EMP_REC.GENDER);
        DBMS_OUTPUT.PUT_LINE('Age : ' || EMP_REC.AGE);
        DBMS_OUTPUT.PUT_LINE('Basic Sal : ' || EMP_REC.BASICSAL);
        DBMS_OUTPUT.PUT_LINE('---');

    END LOOP;

END;
/