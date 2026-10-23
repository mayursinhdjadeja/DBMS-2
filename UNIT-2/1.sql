/*
    Write a PL/SQL block that uses a cursor attribute SQL%ROWCOUNT to raise the basic salary of 
    employees by 10% that are working in department number 10 and also display the appropriate message 
    based on the existence of the record in the EMP table.  (Use Implicit Cursor) 
*/

CREATE TABLE customer
(
    empno number(4),
    ename varchar2(20),
    sal number(8,2),
    deptno number(2)
);

insert into customer values(074,'Mayursinh',20000,10);
insert into customer values(075,'Harsh',25000,20);
COMMIT;

SET SERVEROUTPUT ON;
BEGIN
   	UPDATE EMP
   	SET BasicSal = BasicSal * 1.10
   	WHERE Deptno = 10;
   	IF SQL%ROWCOUNT = 0 THEN
      		DBMS_OUTPUT.PUT_LINE('No employees found in department 10.');
   	ELSE
      		DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT || ' employee(s) salary raised by 10% in department 10.');
   	END IF;
END;
/