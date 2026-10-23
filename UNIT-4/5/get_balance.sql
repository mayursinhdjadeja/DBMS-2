/*
     Write a function that returns the balance for a given account number. 
     (Create ACCOUNT table with ACNO, CNAME, BNAME, BALANCE columns using appropriate data types). 
*/

CREATE TABLE ACCOUNT 
(
    ACNO NUMBER(10) PRIMARY KEY,
    CNAME VARCHAR2(50),
    BNAME VARCHAR2(50),
    BALANCE NUMBER(12,2)
);

CREATE OR REPLACE FUNCTION get_balance
(
    P_ACNO NUMBER
)
RETURN NUMBER
IS
    V_BALANCE NUMBER(12,2);
BEGIN
    SELECT BALANCE INTO V_BALANCE FROM ACCOUNT WHERE ACNO = P_ACNO;
    RETURN V_BALANCE;
END;
/
