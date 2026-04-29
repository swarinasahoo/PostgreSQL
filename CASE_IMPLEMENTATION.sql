-- CASES IN PGSQL 

-- TABLE AND DATA 
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    experience INT,
    performance_score INT
);

INSERT INTO employees (name, department, salary, experience, performance_score) VALUES
('Amit', 'IT', 60000, 5, 85),
('Neha', 'HR', 40000, 2, 70),
('Raj', 'Sales', 30000, 1, 60),
('Priya', 'IT', 80000, 7, 92),
('Karan', 'Finance', 50000, 3, 75),
('Sneha', 'HR', 35000, 1, 65),
('Vikram', 'IT', 90000, 10, 95),
('Anjali', 'Sales', 45000, 4, 80);

-- TASKS : 
-- 1. Salary Category
SELECT 
name, salary, 
CASE 
	WHEN salary >= 80000 THEN 'HIGH'
	WHEN salary >= 50000 THEN 'MEDIUM'
	ELSE 'LOW'
END AS salary_category 
FROM employees;

-- 2. Experience Level
SELECT name, experience, 
CASE 
	WHEN experience >= 7 THEN 'SENIOR'
	WHEN experience >= 3 THEN 'MID - LEVEL'
	ELSE 'FRESHER'
END AS experience_category
FROM employees;

-- 3. Performance Rating
SELECT name, performance_score, 
CASE 
	WHEN performance_score >= 90 THEN 'EXCELLENT'
	WHEN performance_score >= 75 THEN 'GOOD'
	ELSE 'AVERAGE'
END AS performance_rating FROM employees;


-- 4. Bonus Eligibility
SELECT name, salary, 
	CASE 
		WHEN salary >= 70000 THEN 'ELIGIBLE'
		ELSE 'NOT ELIGIBLE'
	END AS bonus_status FROM employees;

-- 5. Department Category
SELECT name, department, 
CASE 
	WHEN department = 'IT' THEN 'TECHNICAL'
	WHEN department = 'HR' THEN 'MANAGEMENT'
	ELSE 'BUSINESS'
END AS department_category FROM employees;

-- 6. Salary Hike % (1.2 for 90, 1.1 for 75, 1.05)
SELECT name, salary, performance_score,
CASE 
	WHEN performance_score >= 90 THEN salary * 1.2
	WHEN performance_score >= 75 THEN salary * 1.1
	ELSE salary * 1.05
END AS new_salary FROM employees;

-- 7. Work Status Based on Experience
SELECT name, experience, 
CASE 
	WHEN experience >= 5 THEN 'PERMANANT'
	ELSE 'CONTRACTUAL'
END AS work_status FROM employees;

-- 8. Salary Range Label
SELECT name, salary,
CASE 
	WHEN salary BETWEEN 30000 AND 50000 THEN 'LOW RANGE'
	WHEN salary BETWEEN 50001 AND 80000 THEN 'MID RANGE'
	ELSE 'HIGH RANGE'
END AS salary_range FROM employees;

-- 9. Performance Bonus Amount
SELECT name, salary, performance_score,
CASE 
	WHEN performance_score >= 90 THEN 10000
	WHEN performance_score >= 75 THEN 5000
	ELSE 2000
END AS bonus FROM employees;

-- 10. Employee Priority
SELECT name, experience, performance_score, 
CASE 
	WHEN experience >= 8 AND performance_score >= 90 THEN 'TOP PRIORITY'
	ELSE 'NORMAL'
END AS priority FROM employees;
	
-- 11. HR Special Check
SELECT name, department, experience,
CASE 
	WHEN department = 'HR' AND experience < 2 THEN 'TRAINING NEEDED'
	ELSE 'NO TRAINING'
END AS hr_status FROM employees;
	
-- 12. Salary Tax Category
SELECT name, salary, 
CASE 
	WHEN salary > 80000 THEN 'HIGH TAX'
	WHEN salary > 50000 THEN 'MEDIUM TAX'
	ELSE 'LOW TAX'
END AS tax_category FROM employees;
	
-- 13. Experience Bonus Tag
SELECT name, 
CASE 	
	WHEN experience >= 10 THEN 'LOYAL EMPLOYEE'
	ELSE 'REGULAR'
END AS tag FROM employees;
	
-- 14. Performance + Department 
SELECT name, 
CASE 
	WHEN department = 'IT' AND performance_score >= 90 THEN 'STAR IT EMPLOYEE'
	ELSE 'NORMAL EMPLOYEE'
END AS status FROM employees;

-- 15. Smart Label
SELECT name, 
CASE 
	WHEN salary > 80000 AND experience > 5 THEN 'SENIOR HIGH PAID'
	WHEN salary > 50000 THEN 'MID PAID'
	ELSE 'ENTRY LEVEL'
END AS exployee_label FROM employees;














