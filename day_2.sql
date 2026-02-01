-- Day 2 – PostgreSQL (WHERE, AND, OR, LIKE, ALTER, UPDATE, JOINS)

-- 1️⃣ WHERE Clause
-- Definition
-- The WHERE clause is used to filter records based on a condition.
-- Explanation
-- WHERE filters data


-- AND means both conditions must be true


-- ✅ Correct way to fetch Amit Kumar and Rahul Sharma (example):
SELECT *
FROM students
WHERE course = 'Python' And city = 'Mohali';



-- 2️⃣ AND Operator
-- Definition
-- The AND operator is used when all conditions must be true.
-- Code
SELECT *
FROM students
WHERE course = 'Python' AND city = 'Mohali';


-- Explanation
-- Student must be enrolled in Python


-- AND student must be from Mohali


-- If any one condition fails → row not shown



-- 3️⃣ OR Operator
-- Definition
-- The OR operator is used when any one condition is true.
-- Code
SELECT *
FROM students
WHERE course = 'Python' OR city = 'Delhi';

-- Explanation
-- Students with Python course OR


-- Students from Delhi


-- Even if one condition matches, data will appear



-- 4️⃣ LIKE Operator
-- Definition
-- The LIKE operator is used to search for a specific pattern in a column.
-- Wildcards:
-- %char → ends with


-- char% → starts with


-- %char% → contains



-- Names List (for understanding)
-- Rohan
-- Mohan
-- Sohan
-- Raman


Starts With
SELECT * 
FROM students 
WHERE name LIKE 'A%';

-- Explanation
-- Finds names starting with A


-- Example: Amit, Ankit



SELECT * 
FROM students 
WHERE name LIKE 'Sh%';

-- Explanation
-- Finds names starting with Sh


-- Example: Shivam, Shashant



-- Ends With
SELECT * 
FROM students 
WHERE name LIKE '%h';

-- Explanation
-- Finds names ending with h


-- Example: Rakesh, Suresh



SELECT * 
FROM students 
WHERE name LIKE '%ngh';

-- Explanation
-- Finds names ending with ngh


-- Example: Singh



-- Contains
SELECT * 
FROM students 
WHERE name LIKE '%ma%';

-- Explanation
-- Finds names containing ma


-- Example: Raman, Sumant



-- 5️⃣ ALTER TABLE
-- Definition
-- ALTER TABLE is used to modify the structure of an existing table.
-- Code
ALTER TABLE students
ADD city VARCHAR(50);

-- Explanation
-- Adds a new column named city


-- Existing data remains safe



-- 6️⃣ UPDATE
-- Definition
-- UPDATE is used to modify existing records in a table.
-- Code
UPDATE students
SET city = 'Mohali'
WHERE id = 10;

-- Explanation
-- Updates city to Mohali


-- Only for student with id = 10


-- ⚠️ Without WHERE, all rows will be updated

-- 7️⃣ Selecting All Columns
-- Definition
SELECT * FROM table_name returns all columns and rows.
Code
SELECT * FROM students;


-- 8️⃣ Selecting Specific Column
-- Definition
-- We can fetch only required columns instead of all data.
-- Code
SELECT city FROM studentss;

-- Explanation
-- Shows only city column


-- Improves performance



-- 9️⃣ Creating Related Tables (For JOIN)
Students Table
CREATE TABLE studentss (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    city VARCHAR(50)
);


Insert Data
INSERT INTO studentss (student_id, student_name, city) VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Anita', 'Mumbai'),
(3, 'Vikas', 'Pune'),
(4, 'Neha', 'Bangalore');



Courses Table
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    student_id INT,
    course_name VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES studentss(student_id)
);


Insert Data
INSERT INTO courses (course_id, student_id, course_name) VALUES
(101, 1, 'Python'),
(102, 1, 'Django'),
(103, 2, 'Java'),
(104, 3, 'SQL');



-- 🔟 JOIN
-- Definition
-- A JOIN is used to combine data from two or more tables using a common column.
-- When can we apply JOIN?
-- We must have at least two tables


-- There must be one common column



-- LEFT JOIN
-- Definition
-- LEFT JOIN returns:
-- All records from left table


-- Matching records from right table


-- NULL if no match found


-- Code
SELECT
    studentss.student_id,
    studentss.student_name,
    studentss.city,
    courses.course_name
FROM studentss
LEFT JOIN courses
ON studentss.student_id = courses.student_id;


-- Explanation
-- Left table → studentss


-- Right table → courses


-- Common column → student_id


-- All students will appear


-- Courses appear only if matched



-- ✅ Final Line (Important)
-- Definition
-- SELECT * FROM table_name;

-- ➡️ Fetches all columns and all rows from a table.
