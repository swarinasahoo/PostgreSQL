--CREATING THE STUDENT TABLE
CREATE TABLE Students(
	Student_id INT,
	name VARCHAR(50),
	age INT,
	marks INT,
	city VARCHAR(50)
);

-- INSERT DATA INTO THE TABLE
INSERT INTO Students(Student_id,name,age,marks,city)
VALUES
(1,'Swarina',28,90,'Jajpur'),
(2,'Suraj',20,95,'Hyderabad'),
(3,'Sarvesh',23,85,'Bhubaneswar'),
(4,'Sanjana',21,75,'Cuttack'),
(5,'Sonali',29,70,'Mumbai'),
(6,'Rohit',28,80,'Bangalore'),
(7,'Sahil',25,87,'Delhi'),
(8,'Subhashree',24,65,'Chennai');

-- SELECT THE TABLE TO VIEW THE DATA
SELECT * FROM Students;
SELECT name FROM Students WHERE marks > 80;
SELECT name FROM Students WHERE city = 'Hyderabad';

-- DELETE THE DATA FROM THE TABLE
DELETE FROM Students WHERE name = 'Rohit';
SELECT * FROM Students;
