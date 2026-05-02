-- One-to-One Relationship (1:1)

-- One row in Table A is connected to exactly one row in Table B.
-- Real-life example:

-- One person → One passport
-- One passport → One person

-- In PostgreSQL:
-- We enforce this using a FOREIGN KEY + UNIQUE constraint.
-- Every user can have only ONE passport, and every passport belongs to only ONE user — 
-- enforced using UNIQUE.

-- Table 1: users
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Table 2: passports
CREATE TABLE passports (
    passport_id INT PRIMARY KEY,
    user_id INT UNIQUE,
    passport_number VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Insert Data 
INSERT INTO users VALUES
(1, 'Rahul'),
(2, 'Sneha'),
(3, 'Amit');

INSERT INTO passports VALUES
(101, 1, 'P12345'),
(102, 2, 'P67890'),
(103, 3, 'P54321');


-- TASKS
-- Show all users with their passport numbers.
SELECT u.name, p.passport_number 
FROM users u JOIN passports p 
ON u.user_id = p.user_id;

-- Find passport details of user 'Sneha'.
SELECT p.* 
FROM passports p JOIN users u
ON u.user_id = p.user_id WHERE u.name = 'Sneha';

-- Show all users who have passports.
SELECT u.* 
FROM users u JOIN passports p 
ON u.user_id = p.user_id;

-- Count total passports issued.
SELECT COUNT(*) FROM passports;

-- Try inserting another passport for same user (should fail)
INSERT INTO passports VALUES (104, 1, 'p99999');














