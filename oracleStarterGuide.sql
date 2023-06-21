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