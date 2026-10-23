/*
    Write a function that returns the square of the given number. Execute this function using a separate 
    PL/SQL block and also without using PL/SQL block on the command line. 
*/

BEGIN
    DBMS_OUTPUT.PUT_LINE('Square = ' || square_num(5));
END;
/
