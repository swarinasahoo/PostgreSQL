-- ALTER IN postgreSQL 
-- Create Table employees
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT
);

-- Insert Data
INSERT INTO employees (name, department, salary) VALUES
('Rahul Sharma', 'IT', 40000),
('Anjali Mehta', 'HR', 35000),
('Vikram Singh', 'Finance', 45000),
('Sneha Reddy', 'IT', 50000),
('Arjun Verma', 'Marketing', 30000);

-- Check Initial Table
SELECT * FROM employees;


-- TASKS : 
-- 1. Add email column
ALTER TABLE employees 
ADD COLUMN email VARCHAR(100);

SELECT * FROM employees;
-- 2. Add phone_number column
ALTER TABLE employees 
ADD COLUMN phone CHAR(10);

SELECT * FROM employees;
-- 3. Change name datatype
ALTER TABLE employees 
ALTER COLUMN name TYPE VARCHAR(100);

SELECT * FROM employees;

-- 4. Increase department size
ALTER TABLE employees 
ALTER COLUMN department TYPE VARCHAR(50);

SELECT * FROM employees;

-- 5. Add NOT NULL constraint on salary
ALTER TABLE employees 
ALTER COLUMN salary SET NOT NULL;

-- 6. Add DEFAULT value to salary
ALTER TABLE employees 
ALTER COLUMN salary SET DEFAULT 25000;

INSERT INTO employees (name, department) 
VALUES ('Test USER', 'HR');

SELECT * FROM employees;
-- 7. Drop phone column
ALTER TABLE employees 
DROP COLUMN phone;

SELECT * FROM employees;

-- 8. Rename column name → full_name
ALTER TABLE employees 
RENAME COLUMN name TO full_name;

SELECT * FROM employees;

-- 9. Rename table
ALTER TABLE employees 
RENAME TO company_employees;

SELECT * FROM company_employees;

-- 10. Add joining_date with default current date
ALTER TABLE company_employees 
ADD COLUMN joining_date DATE DEFAULT CURRENT_DATE;

SELECT * FROM company_employees;














