-- Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter.

SET SERVEROUTPUT ON;
DECLARE
    FEET NUMBER;
    CM NUMBER;
    INCH NUMBER;
    METER NUMBER;
BEGIN
    FEET := &ENTER_FEET;
    CM := FEET * 30.48;
    INCH := FEET * 12;
    METER := FEET * 0.3048;
    DBMS_OUTPUT.PUT_LINE('FEET : ' || FEET);
    DBMS_OUTPUT.PUT_LINE('CM : ' || CM);
    DBMS_OUTPUT.PUT_LINE('INCH : ' || INCH);
    DBMS_OUTPUT.PUT_LINE('METER : ' || METER);
END;
/