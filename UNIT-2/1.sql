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
DECLARE
    total_rows number(2):=0;
BEGIN
    UPDATE customer SET sal =(sal*0.10)
    WHERE deptno=10;
    IF sql%notfound THEN
        dbms_output.put_line('no customer selected');
    ELSIF sql%found THEN
        total_rows:=sql%rowcount;
            dbms_output.put_line(total_rows || 'customer salary updated');
    END IF;
END;
/
