-- INNER AND FULL JOIN IMPLEMENTATION

-- TABLE 1 : employees 
CREATE TABLE employees (
    emp_id INT,
    name VARCHAR(50),
    department VARCHAR(50)
);

INSERT INTO employees VALUES
(1, 'Amit', 'HR'),
(2, 'Neha', 'IT'),
(3, 'Raj', 'Finance'),
(4, 'Priya', 'IT'),
(5, 'Kiran', 'HR');

-- TABLE 2 : salaries 

CREATE TABLE salaries (
    emp_id INT,
    salary INT
);

INSERT INTO salaries VALUES
(1, 30000),
(2, 40000),
(4, 45000),
(6, 50000);

-- Show employee name with salary 
SELECT e.name, s.salary 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id;

-- Show all columns from both the sides 
SELECT * 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id;

-- Show employees working in IT with salary 
SELECT e.name, e.department, s.salary
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id WHERE e.department = 'IT';

-- Count how many employees have salary 
SELECT COUNT(*) AS total_with_salary 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id;

-- Find highest salary employee 
SELECT e.name, s.salary 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id 
ORDER BY s.salary DESC LIMIT 1;

-- Show employees with salary > 35,000 
SELECT e.name, s.salary 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id WHERE s.salary > 35000;

-- Show avg salary of matching employees 
SELECT ROUND(AVG(s.salary), 2) AS avg_salary 
FROM employees e INNER JOIN salaries s 
ON e.emp_id = s.emp_id;


--FULL JOIN : 

--Show all employees and salaries
SELECT e.name,s.salary
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;

--Show employees without salary
SELECT e.name,s.salary
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id
WHERE s.salary IS NULL;

-- Show salary records without employee
SELECT e.name,s.salary
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id
WHERE e.name IS NULL;

--Show all data with department + salary
SELECT e.name,e.department,s.salary
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;

--Count total records after full join
SELECT COUNT(*) AS total_records
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;

--Show employees with NULL salary labeled
SELECT e.name, COALESCE(s.salary,0) AS salary_status
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;

7. Show type of record (Matched / Not Matched)
SELECT e.name,s.salary,
CASE
	WHEN e.emp_id IS NOT NULL AND s.emp_id IS NOT NULL THEN 'MATCHED'
	WHEN e.emp_id IS NOT NULL AND s.emp_id IS NULL THEN 'EMPLOYEE ONLY'
ELSE 'SALARY ONLY'
END AS record_type
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;

	
--Show employees with salary or mark “No Salary
SELECT e.name,COALESCE(s.salary::TEXT,'No Salary') AS salary_status
FROM employees e FULL JOIN salaries s
ON e.emp_id = s.emp_id;





































