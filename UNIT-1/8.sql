/*
8) Write a PL/SQL block which displays the gross salary of employees as per user input EID. 
(Consider an EMP table with EID, EName, Deptno, Deptname, Gender, Age, BasicSal with appropriate data types.)
Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF.
Rules: HRA = 15% of basic, DA = 50% of basic,
Medical = Rs. 500, PF = 10% of basic.
*/

-- CREATE TABLE
CREATE TABLE EMP
(
    EID NUMBER(4) PRIMARY KEY,
    ENAME VARCHAR2(20),
    DEPTNO NUMBER(3),
    DEPTNAME VARCHAR2(30),
    GENDER VARCHAR2(1),
    AGE NUMBER(3),
    BASICSAL NUMBER(8,2)
);

-- RECORD INSERT
INSERT INTO EMP VALUES (7071, 'HARSH', 11, 'HR', 'M', 22, 80000);
INSERT INTO EMP VALUES (7072, 'HITKARAN', 9, 'FINANCE', 'M', 25, 60000);
INSERT INTO EMP VALUES (7073, 'JAYRAJ', 9, 'FINANCE', 'M', 28, 60000);
INSERT INTO EMP VALUES (7074, 'MAYURSINH', 1, 'IT', 'M', 21, 300000);
INSERT INTO EMP VALUES (7075, 'DIGVIJAY', 11, 'HR', 'M', 23, 80000);

-- PL/SQL BLOCK
SET SERVEROUTPUT ON;

DECLARE

    V_EID EMP.EID%TYPE := &ENTER_EID;
    V_BASICSAL EMP.BASICSAL%TYPE;

    V_HRA NUMBER(10,2);
    V_DA NUMBER(10,2);
    V_MEDICAL NUMBER(10,2);
    V_PF NUMBER(10,2);
    V_GROSSSALARY NUMBER(10,2);

BEGIN

    SELECT BASICSAL INTO V_BASICSAL FROM EMP WHERE EID = V_EID;

    V_HRA := V_BASICSAL * 15 / 100;
    V_DA := V_BASICSAL * 50 / 100;
    V_MEDICAL := 500;
    V_PF := V_BASICSAL * 10 / 100;

    V_GROSSSALARY := V_BASICSAL + V_DA + V_HRA + V_MEDICAL - V_PF;

    DBMS_OUTPUT.PUT_LINE('Employee ID: ' || V_EID);
    DBMS_OUTPUT.PUT_LINE('Basic Salary: ' || V_BASICSAL);
    DBMS_OUTPUT.PUT_LINE('HRA: ' || V_HRA);
    DBMS_OUTPUT.PUT_LINE('DA: ' || V_DA);
    DBMS_OUTPUT.PUT_LINE('Medical: ' || V_MEDICAL);
    DBMS_OUTPUT.PUT_LINE('PF: ' || V_PF);
    DBMS_OUTPUT.PUT_LINE('Gross Salary: ' || V_GROSSSALARY);

EXCEPTION

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee Not Found');

END;
/