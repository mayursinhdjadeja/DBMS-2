-- Write a program to generate the numbers using LOOP, FOR LOOP and WHILE LOOP up to the number inputted by the user.

SET SERVEROUTPUT ON;
DECLARE
    N NUMBER;
    I NUMBER := 1;
BEGIN
    N := &ENTER_NUMBER;
    -- SIMPLE LOOP
    DBMS_OUTPUT.PUT_LINE('USING SIMPLE LOOP');
    I := 1;
    LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        I := I + 1;
        EXIT WHEN I > N;
    END LOOP;
    -- WHILE LOOP
    DBMS_OUTPUT.PUT_LINE('USING WHILE LOOP');
    I := 1;
    WHILE I <= N LOOP
        DBMS_OUTPUT.PUT_LINE(I);
        I := I + 1;
    END LOOP;
    -- FOR LOOP
    DBMS_OUTPUT.PUT_LINE('USING FOR LOOP');
    FOR I IN 1..N LOOP
        DBMS_OUTPUT.PUT_LINE(I);
    END LOOP;
END;
/