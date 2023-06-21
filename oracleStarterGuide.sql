--Creating a table
CREATE TABLE employess (
    employeeId NUMBER(5) PRIMARY KEY,
    first_name VARCHAR2(50) NOT NULL,
    last_name VARCHAR2(50) NOT NULL,
    hire_date DATE,
    department_id NUMBER(3)
);
