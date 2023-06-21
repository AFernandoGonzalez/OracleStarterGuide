--DDL EXAMPLE

--1 Create the table
CREATE TABLE employees (
  employee_id NUMBER(5) PRIMARY KEY,
  first_name VARCHAR2(50) NOT NULL,
  last_name VARCHAR2(50) NOT NULL,
  hire_date DATE,
  department_id NUMBER(3)
);


--2 adding a new column
ALTER TABLE employees
ADD email VARCHAR2(100);


--3 modifying the data type of a column
ALTER TABLE employees
MODIFY department_id NUMBER(4);


--4 Add a primary key constraint
ALTER TABLE employees
ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);


--5 Add a foreign key constraint
ALTER TABLE employees
ADD CONSTRAINT fk_employees_department
FOREIGN KEY (department_id)
REFERENCES departments (department_id);


--6 Create an index on a column
CREATE INDEX idx_employees_last_name ON employees(last_name);

--7 Drop the table:
DROP TABLE employees;


--8 Rename the table:
ALTER TABLE employees
RENAME TO new_employees;



--DML EXAMPLE

--1 Insert a new employee:
INSERT INTO employees (employee_id, first_name, last_name, hire_date, department_id)
VALUES (1, 'John', 'Doe', TO_DATE('2023-05-23', 'YYYY-MM-DD'), 101);

INSERT INTO employees (employee_id, first_name, last_name, hire_date, department_id)
VALUES (2, 'Fernando', 'Gonzalez', TO_DATE('2023-05-23', 'YYYY-MM-DD'), 102);

--2 Update an employee's department:
UPDATE employees
SET department_id = 105
WHERE employee_id = 1;

--3 Delete an employee:
DELETE FROM employees
WHERE employee_id = 2;


--4 Select all employees:
SELECT * FROM employees;


--5 Select employees with a specific department ID:
SELECT * FROM employees
WHERE department_id = 105;


--6 Select employees with a specific last name:
SELECT * FROM employees
WHERE last_name = 'Doe';


--7 Select employees and order the results by hire date in ascending order:
SELECT * FROM employees
ORDER BY hire_date ASC;

--8 Select the count of employees in each department:
SELECT department_id, COUNT(*) AS employee_count
FROM employees
GROUP BY department_id;

--9 Select the average hire date for all employees:
SELECT AVG(hire_date) AS avg_hire_date
FROM employees;

SELECT AVG(MONTHS_BETWEEN(SYSDATE, hire_date)/12) AS avg_years_of_service
FROM employees;


--10 elect employees hired within a specific date range:
SELECT * FROM employees
WHERE hire_date BETWEEN TO_DATE('2023-01-01', 'YYYY-MM-DD') AND TO_DATE('2023-12-31', 'YYYY-MM-DD');







