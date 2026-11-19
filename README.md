# MySQL Assignment 1: DDL Commands & Constraints

## Description

This assignment uses MySQL to build and manage an Employee database. It demonstrates DDL (Data Definition Language) commands and the use of constraints to keep data accurate and consistent.

The database, named `employee`, has three related tables:

- **departments**: stores department details (department_id, department_name)
- **location**: stores work locations (location_id, location)
- **employees**: stores employee details (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary), linked to departments and location through foreign keys

## DDL Commands Covered

- **CREATE**: creating the database and its tables
- **ALTER**: adding the `email` column, widening `designation`, dropping `age`, and renaming `hire_date` to `date_of_joining`
- **RENAME**: renaming `departments` to `Departments_Info` and `location` to `Locations`
- **TRUNCATE**: removing all rows from the employees table
- **DROP**: dropping the employees table and the `employee` database

## Constraints Implemented

- **Primary keys** to uniquely identify each record
- **NOT NULL** and **UNIQUE** on department names and locations
- **AUTO_INCREMENT** on `location_id` for sequential unique ids
- **NOT NULL** on employee name
- **ENUM** to limit gender to 'M' or 'F'
- **CHECK** to ensure age is 18 or above
- **DEFAULT** to set `hire_date` to the current date
- **Foreign keys** linking employees to departments and location


