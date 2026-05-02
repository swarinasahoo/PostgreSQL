-- Many-to-Many Relationship

-- Many rows in Table A relate to many rows in Table B.

-- Real-life example:

-- One student → many courses
-- One course → many students

-- Problem:
-- You CANNOT connect these two tables directly.

-- Solution:
-- Use a third table (junction table)


-- Table 1: students
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Table 2: courses
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50)
);

-- Table 3: enrollments (IMPORTANT) JUNCTION TABLE : This table is the bridge
CREATE TABLE enrollments (
	student_id INT, 
	course_id INT, 
	PRIMARY KEY (student_id, course_id), 
	FOREIGN KEY (student_id) REFERENCES students (student_id), 
	FOREIGN KEY (course_id) REFERENCES courses (course_id)
);

-- INSERT DATA 
INSERT INTO students VALUES
(1, 'Rahul'),
(2, 'Sneha'),
(3, 'Amit');

INSERT INTO courses VALUES
(101, 'SQL'),
(102, 'Python'),
(103, 'Power BI');

INSERT INTO enrollments VALUES
(1, 101),
(1, 102),
(2, 101),
(3, 103),
(2, 103);

-- TASKS
-- Show all students with their courses.
SELECT s.name, c.course_name 
FROM students s JOIN enrollments e 
ON s.student_id = e.student_id 
JOIN courses c ON e.course_id = c.course_id;

-- Find all courses taken by 'Rahul'.
SELECT c.course_name 
FROM courses c 
JOIN enrollments e ON c.course_id = e.course_id 
JOIN students s ON s.student_id = e.student_id 
WHERE s.name = 'Rahul';


-- Count number of students in each course.
SELECT c.course_name, COUNT(e.student_id) AS total_students 
FROM courses c 
JOIN enrollments e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Find students enrolled in more than 1 course.
SELECT s.name 
FROM students s 
JOIN enrollments e ON s.student_id = e.student_id 
GROUP BY s.name 
HAVING COUNT(e.course_id) > 1;

-- Find courses that have more than 1 student.
SELECT c.course_name 
FROM courses c 
JOIN enrollments e ON c.course_id = e.course_id 
GROUP BY c.course_name 
HAVING COUNT(e.student_id) > 1;












