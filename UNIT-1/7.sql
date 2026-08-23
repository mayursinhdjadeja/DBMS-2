-- Write a PL/SQL block to calculate the total, percentage and grade of student based on his/her Rollno from the RESULT table. (Create RESULT table with Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5, Total, Per, Grade attributes with appropriate data type).

-- CREATE TABLE
CREATE TABLE RESULT
(
    ROLLNO NUMBER(4) PRIMARY KEY,
    NAME VARCHAR2(10),
    OS NUMBER(3),
    CN NUMBER(3),
    PP NUMBER(3),
    RP NUMBER(3),
    LS2 NUMBER(3),
    TOTAL NUMBER(5),
    PER NUMBER(5,2),
    GRADE VARCHAR2(2)
);

-- RECORD INSERT
INSERT INTO RESULT ( ROLLNO , NAME , OS , CN , PP , RP , LS2 ) VALUES ( 7071 , 'RAHUL' , 45 , 39 , 69 , 40 , 80 );
INSERT INTO RESULT ( ROLLNO , NAME , OS , CN , PP , RP , LS2 ) VALUES ( 7072 , 'RAJ' , 56 , 76 , 48 , 49 , 88 );
INSERT INTO RESULT ( ROLLNO , NAME , OS , CN , PP , RP , LS2 ) VALUES ( 7073 , 'NIRAV' , 55 , 69 , 73 , 59 , 70 );
INSERT INTO RESULT ( ROLLNO , NAME , OS , CN , PP , RP , LS2 ) VALUES ( 7074 , 'MAYURSINH' , 98 , 97 , 95 , 90 , 98 );
INSERT INTO RESULT ( ROLLNO , NAME , OS , CN , PP , RP , LS2 ) VALUES ( 7075 , 'RIYA' , 75 , 79 , 79 , 70 , 90 );
COMMIT;

-- PL/SQL BLOCK
SET SERVEROUTPUT ON;

DECLARE

    V_ROLLNO RESULT.ROLLNO%TYPE := &ENTER_ROLLNO;
    V_TOTAL RESULT.TOTAL%TYPE;
    V_PER RESULT.PER%TYPE;
    V_GRADE RESULT.GRADE%TYPE;

BEGIN

    SELECT OS + CN + PP + RP + LS2 INTO V_TOTAL FROM RESULT WHERE ROLLNO = V_ROLLNO;

    V_PER := V_TOTAL / 5;

    IF V_PER >= 90 THEN
        V_GRADE := 'O';

    ELSIF V_PER >= 80 THEN
        V_GRADE := 'A+';

    ELSIF V_PER >= 70 THEN
        V_GRADE := 'A';

    ELSIF V_PER >= 60 THEN
        V_GRADE := 'B+';

    ELSIF V_PER >= 50 THEN
        V_GRADE := 'B';

    ELSIF V_PER >= 40 THEN
        V_GRADE := 'C';

    ELSIF V_PER >= 35 THEN
        V_GRADE := 'D';

    ELSE
        V_GRADE := 'F';

    END IF;

    UPDATE RESULT SET TOTAL = V_TOTAL , PER = V_PER , GRADE = V_GRADE WHERE ROLLNO = V_ROLLNO;
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Roll No: ' || V_ROLLNO);
    DBMS_OUTPUT.PUT_LINE('Total: ' || V_TOTAL);
    DBMS_OUTPUT.PUT_LINE('Percentage: ' || V_PER);
    DBMS_OUTPUT.PUT_LINE('Grade: ' || V_GRADE);

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Student Record Not Found');

END;
/