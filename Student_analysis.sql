CREATE TABLE student_analytics (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    city VARCHAR(50),
    course_name VARCHAR(100),
    course_fee INT,
    marks INT,
    attendance INT,
    assignment_score INT,
    placement_status VARCHAR(20),
    enrollment_date DATE
);

SELECT * FROM student_analytics;

--Show all students from Hyderabad
SELECT * FROM student_analytics
WHERE city = 'Hyderabad';

--Count total number of students
SELECT COUNT(*) AS total_students
FROM student_analytics;

--Show students enrolled in 'Data Science'
SELECT * FROM student_analytics
WHERE course_name = 'Data Science';

--Find average marks of all students
SELECT ROUND(AVG(marks),2) AS avg_marks
FROM student_analytics;

--Show top 5 student based on marks
SELECT * FROM  student_analytics
ORDER BY marks DESC
LIMIT 5;

--Count number of students per city
SELECT city, COUNT(*) AS total_students
FROM student_analytics
GROUP BY city;

--Find average attendance per course
SELECT course_name,ROUND(AVG(attendance),2) AS avg_attendance
FROM student_analytics
GROUP BY course_name;

--Show maximum and minimum marks
SELECT 
MAX(marks) AS max_marks,
MIN(marks) AS min_marks
FROM student_analytics;

--Show students with attendance less than 50%
SELECT * FROM student_analytics
WHERE attendance < 50;

--Count students based on placement status
SELECT placement_status,COUNT(*) AS total_students
FROM student_analytics
GROUP BY placement_status;

--Categorize students based on marks
SELECT student_name, marks,
CASE 
    WHEN marks > 75 THEN 'Excellent'
    WHEN marks BETWEEN 50 AND 75 THEN 'Average'
    ELSE 'Poor'
END AS performance
FROM student_analytics;


-- 12. Categorize students based on attendance
SELECT student_name, attendance,
CASE 
    WHEN attendance >= 75 THEN 'Good Attendance'
    ELSE 'Low Attendance'
END AS attendance_status
FROM student_analytics;


-- 13. Show placement readiness
SELECT student_name, marks, attendance,
CASE 
    WHEN marks > 70 AND attendance > 70 THEN 'Placement Ready'
    ELSE 'Not Ready'
END AS readiness
FROM student_analytics;


-- 14. Count number of students in each performance category
SELECT 
CASE 
    WHEN marks > 75 THEN 'Excellent'
    WHEN marks BETWEEN 50 AND 75 THEN 'Average'
    ELSE 'Poor'
END AS performance,
COUNT(*) AS total_students
FROM student_analytics
GROUP BY performance;


-- 15. Find courses with more than 10 students
SELECT course_name, COUNT(*) AS total_students
FROM student_analytics
GROUP BY course_name
HAVING COUNT(*) > 10;







