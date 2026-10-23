--  Write a trigger that restricts the entry of records in the EMP table if the salary is greater than Rs 50000. 

SET SERVEROUTPUT ON;
CREATE OR REPLACE TRIGGER TRG_CHEK_SALARY
BEFORE INSERT OR UPDATE OF BASICSAL ON EMP
FOR EACH ROW 
BEGIN 
    IF :NEW.BASICSAL > 50000 THEN 
        RAISE_APPLICATION_ERROR
        (
            -20001,
            'SALARY CANNOT BE GREATER THAN RS 50000'
        );
    END IF;
END;
/