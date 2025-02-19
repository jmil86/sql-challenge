# sql-challenge
# EmployeeSQL Queries

This repository contains SQL queries and the schema for the EmployeeSQL database. The queries demonstrate various data retrieval techniques, including joins, filtering, and aggregation.

## Queries

The following queries are included in Data_Analysis.sql:

*   **Employee Information:** Lists the employee number, last name, first name, sex, and salary of each employee.
*   **Employees Hired in 1986:** Lists the first name, last name, and hire date for employees hired in 1986.
*   **Department Managers:** Lists the manager of each department along with their department number, department name, employee number, last name, and first name.
*   **Hercules with Last Name Starting with B:** Lists the first name, last name, and sex of employees whose first name is Hercules and last name begins with the letter B.
*   **Sales Department Employees:** Lists each employee in the Sales department, including their employee number, last name, and first name.
*   **Sales and Development Department Employees:** Lists each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
*   **Last Name Frequency:** Lists the frequency counts, in descending order, of all employee last names.

## Usage

Use the provided schema to create the database, then load data from CSV files with the COPY commands.  Execute the SQL queries individually or via script against the resulting database

## Table Schema

table_schema.sql consists of the following tables:

*   **titles:**
    *   `title_id` (VARCHAR(10), NOT NULL, PRIMARY KEY)
    *   `title` (VARCHAR(50), NOT NULL)
*   **departments:**
    *   `dept_no` (VARCHAR(10), NOT NULL, PRIMARY KEY)
    *   `dept_name` (VARCHAR(50), NOT NULL)
*   **employees:**
    *   `emp_no` (INT, NOT NULL, PRIMARY KEY)
    *   `emp_title_id` (VARCHAR(10), NOT NULL, FOREIGN KEY referencing titles)
    *   `birth_date` (DATE, NOT NULL)
    *   `first_name` (VARCHAR(50), NOT NULL)
    *   `last_name` (VARCHAR(50), NOT NULL)
    *   `sex` (CHAR(1), NOT NULL)
    *   `hire_date` (DATE, NOT NULL)
*   **dept_emp:**
    *   `emp_no` (INT, NOT NULL, FOREIGN KEY referencing employees)
    *   `dept_no` (VARCHAR(10), NOT NULL, FOREIGN KEY referencing departments)
    *   PRIMARY KEY (`emp_no`, `dept_no`)
*   **dept_manager:**
    *   `dept_no` (VARCHAR(10), NOT NULL, FOREIGN KEY referencing departments)
    *   `emp_no` (INT, NOT NULL, FOREIGN KEY referencing employees)
    *   PRIMARY KEY (`dept_no`, `emp_no`)
*   **salaries:**
    *   `emp_no` (INT, NOT NULL, PRIMARY KEY, FOREIGN KEY referencing employees)
    *   `salary` (INT, NOT NULL)

## Data Loading

Data loading is handled by the COPY commands.  Your CSV files, named after their tables (e.g., titles.csv), need to be in the same directory as the SQL script for this to work.

```sql
COPY titles FROM 'titles.csv' DELIMITER ',' CSV HEADER;
COPY departments FROM 'departments.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'employees.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'dept_manager.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'salaries.csv' DELIMITER ',' CSV HEADER;