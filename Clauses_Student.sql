-- CLAUSES IN PGSQL
-- Create Table
CREATE TABLE students (
	id SERIAL PRIMARY KEY, 
	name VARCHAR(50) NOT NULL, 
	age INT, 
	city VARCHAR(50), 
	marks INT, 
	course VARCHAR(50)
);

-- Insert Data
INSERT INTO students (name, age, city, marks, course) VALUES
('Amit', 20, 'Hyderabad', 85, 'B.Tech'),
('Riya', 22, 'Delhi', 78, 'B.Sc'),
('Karan', 19, 'Mumbai', 92, 'B.Tech'),
('Sneha', 21, 'Hyderabad', 67, 'B.Com'),
('Rahul', 23, 'Delhi', 55, 'B.Sc'),
('Priya', 20, 'Mumbai', 88, 'B.Tech'),
('Ankit', 22, 'Hyderabad', 74, 'B.Com'),
('Neha', 21, 'Delhi', 81, 'B.Sc'),
('Vikram', 24, 'Mumbai', 60, 'B.Tech'),
('Pooja', 20, 'Hyderabad', 90, 'B.Com');

-- Show all students
SELECT * FROM students;

-- Students with marks > 80
SELECT * FROM students WHERE marks > 80;

-- Students from Hyderabad AND marks > 70
SELECT * FROM students 
WHERE city = 'Hyderabad' AND marks > 70;

-- Students from Delhi OR Mumbai
SELECT * FROM students 
WHERE city = 'Delhi' OR city = 'Mumbai';

-- Names starting with ‘A’
SELECT * FROM students;

SELECT * FROM students WHERE name LIKE 'A%';

-- Students from Hyderabad, Delhi
SELECT * FROM students 
WHERE city IN ('Hyderabad', 'Delhi');

-- Students with marks between 70 and 90 
SELECT * FROM students 
WHERE marks BETWEEN 70 AND 90;

-- Sort students by marks (highest first)
SELECT * FROM students 
ORDER BY marks DESC;

-- Show top 3 students
SELECT * FROM students 
ORDER BY marks DESC LIMIT 3;

-- Count students in each city, show only cities with more than 2 students
SELECT city, COUNT(*) AS total_students
FROM students 
GROUP BY city
HAVING COUNT(*) > 2;