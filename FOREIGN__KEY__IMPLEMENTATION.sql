--Parent Table
CREATE TABLE departments(
	dept_id INT PRIMARY KEY,
	dept_name VARCHAR(50),
	location VARCHAR(50)
);

--Child Table
CREATE TABLE employees(
	emp_id INT PRIMARY KEY,
	emp_name VARCHAR(50),
	salary INT,
	dept_id INT,
	FOREIGN KEY(dept_id) REFERENCES departments(dept_id)
	ON DELETE CASCADE
);

INSERT INTO departments VALUES
(1,'HR','Delhi'),
(2,'IT','Bangalore'),
(3,'Finance','Mumbai'),
(4,'Marketing','Pune'),
(5,'Sales','Chennai'),
(6,'Admin','Kolkata'),
(7,'Support','Hyderabad'),
(8,'Operations','Noida'),
(9,'Legal','Gurgaon'),
(10,'R&D','Ahemedabad');


INSERT INTO employees VALUES
(101, 'Amit', 30000, 1),
(102, 'Sneha', 35000, 1),
(103, 'Rahul', 40000, 2),
(104, 'Simran', 45000, 2),
(105, 'Suresh', 38000, 2),
(106, 'Neha', 42000, 3),
(107, 'Kiran', 28000, 3),
(108, 'Ravi', 50000, 4),
(109, 'Anjali', 32000, 4),
(110, 'Sanjay', 37000, 5),
(111, 'Pooja', 29000, 5),
(112, 'Rohit', 41000, 6),
(113, 'Sunita', 36000, 6),
(114, 'Tarun', 33000, 7),
(115, 'Sonia', 39000, 7),
(116, 'Arjun', 47000, 8),
(117, 'Meena', 34000, 8),
(118, 'Salman', 36000, 9),
(119, 'Deepak', 31000, 9),
(120, 'Shreya', 60000, 10);

--Show all employees with department names
SELECT e.emp_name,e.salary,d.dept_name
FROM employees e JOIN departments d
ON e.dept_id = d.dept_id;

--Employees in IT department
SELECT e.emp_name,d.dept_name
FROM employees e JOIN departments d
ON e.dept_id = d.dept_id
WHERE d.dept_name = 'IT';

--Departments with more than 1 employee
SELECT d.dept_name , COUNT(e.emp_id)
AS total_employees 
FROM employees e JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name
HAVING COUNT(e.emp_id) > 1;

--Highest salary in each department
SELECT d.dept_name , MAX(e.salary) AS highest_salary
FROM employees e JOIN departments d
ON e.dept_id = d.dept_id
GROUP BY d.dept_name;

--Employees with salary > 35000
SELECT emp_name, salary
FROM employees 
WHERE salary > 35000;

--Count employees in each department
SELECT d.dept_name , COUNT(e.emp_id) AS total
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name;

--Departments with NO employees
SELECT d.dept_name
FROM departments d
LEFT JOIN employees e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL;

--Delete department with dept_id =2
DELETE FROM departments
WHERE dept_id = 2;

--Employees after deletion
SELECT * FROM employees;

--Insert employee with invalid dept_id
INSERT INTO employees VALUES (121,'Test',30000,11);

--Update salary in HR department(+5000)
UPDATE employees 
SET salary = salary + 5000
WHERE dept_id = (SELECT dept_id FROM departments WHERE dept_name = 'HR');
SELECT * FROM employees;

--Employees whose name starts with 'S'
SELECT emp_name
FROM employees
WHERE emp_name LIKE 'S%';

--Delete department 'HR'
DELETE FROM departments
WHERE dept_name = 'HR';

--Total salary expense per department
SELECT d.dept_name , SUM(e.salary) AS total_salary
FROM departments d JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name; 

--Departments with employee count(including 0)
SELECT d.dept_name , COUNT(e.emp_id) AS total_employees
FROM departments d LEFT JOIN employees e
ON d.dept_id = e.dept_id
GROUP BY d.dept_name; 





