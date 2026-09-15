# PL/SQL

> **Procedural Language/SQL — Oracle Database Programming**

PL/SQL is Oracle's procedural extension of SQL that allows SQL statements to be combined with **procedural programming features** such as variables, conditions, loops, procedures, functions, and exception handling.

## 📌 Basic Introduction

PL/SQL programs are generally written using the following structure:

```sql
DECLARE
    -- Variable declarations
BEGIN
    -- Executable statements
EXCEPTION
    -- Exception handling
END;
/
```

### 🔹 Main Sections

* **DECLARE** — Used to declare variables and constants.
* **BEGIN** — Contains executable SQL and PL/SQL statements.
* **EXCEPTION** — Handles runtime errors.
* **END** — Marks the end of the PL/SQL block.

## 🧠 Concepts Covered

```text
PL/SQL
│
├── Anonymous Blocks
├── Variables & Constants
├── SQL Statements
├── Conditional Statements
│   ├── IF
│   └── CASE
│
├── Loops
│   ├── FOR
│   ├── WHILE
│   └── LOOP
│
├── Cursors
├── Exception Handling
├── Procedures
├── Functions
├── Triggers
└── Packages
```

## ⚡ Simple Example

```sql
SET SERVEROUTPUT ON;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Hello from PL/SQL');
END;
/
```

## 🎯 Purpose

This repository contains **PL/SQL programs, practical examples, and exercises** covered during Semester 3, focusing on Oracle database programming and procedural SQL.

### 🛠️ Technology

**Oracle Database • PL/SQL • SQL Developer • VS Code**
