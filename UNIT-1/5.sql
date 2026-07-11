-- Write a PL/SQL block which converts temperature from Celsius to Fahrenheit.

SET SERVEROUTPUT ON;
DECLARE
    CELSIUS NUMBER;
    FAHRENHEIT NUMBER;
BEGIN
    CELSIUS := &ENTER_CELSIUS;
    FAHRENHEIT := (CELSIUS * 9 / 5) + 32;
    DBMS_OUTPUT.PUT_LINE('CELSIUS : ' || CELSIUS);
    DBMS_OUTPUT.PUT_LINE('FAHRENHEIT : ' || FAHRENHEIT);
END;
/