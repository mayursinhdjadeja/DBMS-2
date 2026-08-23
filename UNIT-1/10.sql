-- Write a PL/SQL block to delete the record of an employee for a given EID.

SET SERVEROUTPUT ON;

DECLARE

    V_EID EMP.EID%TYPE := &ENTER_EID;

BEGIN

    DELETE FROM EMP WHERE EID = V_EID;

    IF SQL%ROWCOUNT = 0 THEN
        DBMS_OUTPUT.PUT_LINE('EMPLOYEE RECORD NOT FOUND');

    ELSE
        DBMS_OUTPUT.PUT_LINE('SUCCESSFULLY DELETED');

    END IF;

END;
/