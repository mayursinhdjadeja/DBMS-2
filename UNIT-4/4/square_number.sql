/*
    Write a function that returns the square of the given number. 
    Execute the function using a separate PL/SQL block and on the command line. 
*/

CREATE OR REPLACE FUNCTION square_number
(
    NUM IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN NUM * NUM;
END;
/