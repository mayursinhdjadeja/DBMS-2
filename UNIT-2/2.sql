/*
    Write a PL/SQL block that uses a cursor attribute %ISOPEN and %NOTFOUND to raise the basic salary 
    of employees of department number 20 by 5% and also display the appropriate message based on the 
    existence of the record in the EMP table. Whenever any such raise is given to the employees, a record for 
    the same is maintained in the emp_update table. (Perform using both Implicit and Explicit Cursor) 
*/

CREATE TABLE cust
(
    empno number(4),
    ename varchar2(20),
    sal number(8,2),
    deptno number(2)
);

insert into cust values(071,'Harsh',20000,10);
insert into cust values(072,'Mayursinh',25000,20);
COMMIT;

SET SERVEROUTPUT ON;
DECLARE
	total_rows number(2):=0;
	CURSOR cust1 IS SELECT sal FROM cust WHERE deptno=20 FOR UPDATE of sal;
	sal cust.sal%type;
BEGIN
	OPEN cust1;
	IF Sql%isopen THEN
		dbms_output.put_line('CURSOR IS OPEN');
	ELSE 
		dbms_output.put_line('CURSOR IS NOT OPEN');
	END IF;
	LOOP
		fetch cust1 INTO sal;
		EXIT WHEN cust1%notfound;
	UPDATE cust SET sal=sal+(sal*5/100) WHERE CURRENT OF cust1;
	IF sql%notfound THEN
		dbms_output.put_line('no cust selected');
	ELSIF sql%found THEN
		total_rows:=cust1%rowcount;
		dbms_output.put_line(total_rows || 'cust salary updated');
	END IF;
	END LOOP;
END;
/