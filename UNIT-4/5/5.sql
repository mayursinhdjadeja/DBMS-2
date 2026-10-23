/*
     Write a function that returns the balance for a given account number. 
     (Create ACCOUNT table with ACNO, CNAME, BNAME, BALANCE columns using appropriate data types). 
*/

SET SERVEROUTPUT ON;
DECLARE
	acc_no := &acc_no;
	v_result NUMBER;
BEGIN
	v_result := get_result(acc_no, v_result);
	dbms_output.put_line('The Balance of ' || acc_no ||
	' is: ' || v_result);
END;
/
