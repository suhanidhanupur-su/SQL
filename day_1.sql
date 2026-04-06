-- Day 1 – PostgreSQL (SQL Basics)

-- 1️⃣ What is a Database?
-- A Database is an organized collection of data stored digitally so that it can be easily accessed, managed, and updated.
-- Example:
--  Student records, bank accounts, employee details.

-- 2️⃣ What is DBMS?
-- DBMS (Database Management System) is a software that allows users to create, store, retrieve, update, and delete data from a database.
-- Examples:
--  PostgreSQL, MySQL, Oracle, MongoDB.

-- 3️⃣ What is PostgreSQL?
-- PostgreSQL is a powerful, open-source, object-relational database management system used to store large amounts of structured data securely.

-- 4️⃣ What is SQL?
-- SQL (Structured Query Language) is a standard language used to communicate with databases.
-- Using SQL we can:
-- Create tables
-- Insert data
-- Read data
-- Delete data



-- 5️⃣ What is a Table?
-- A Table is a structured format in a database that stores data in rows and columns.
-- Row → one complete record


-- Column → one field or property


-- 6️⃣ CREATE TABLE
-- Definition
-- CREATE TABLE is an SQL command used to create a new table in a database.
-- Code
-- CREATE TABLE students (
--     id SERIAL PRIMARY KEY,
--     name VARCHAR(100),
--     age INT,
--     course VARCHAR(50)
-- );


-- Explanation
-- students → table name


-- id → unique identification number


-- SERIAL → automatically generates numbers


-- PRIMARY KEY → ensures unique values


-- VARCHAR → stores text


-- INT → stores numbers



-- 7️⃣ SELECT
-- Definition
-- SELECT is used to retrieve data from a table.
-- Code
-- SELECT * FROM students;


-- Explanation
-- SELECT → fetch data


-- * → all columns


-- FROM students → from students table



-- 8️⃣ INSERT
-- Definition
-- INSERT is used to add new data into a table.
-- Code (Single Row)
-- INSERT INTO students (name, age, course)
-- VALUES ('Rahul Sharma', 22, 'Python');


-- Explanation
-- INSERT INTO → add data


-- VALUES → actual data values




-- Code (Multiple Rows)
-- INSERT INTO students (name, age, course)
-- VALUES
-- ('Amit Kumar', 21, 'Django'),
-- ('Neha Singh', 23, 'PostgreSQL');


-- Explanation
-- Multiple records are inserted at once.

-- 9️⃣ DELETE
-- Definition
-- DELETE is used to remove data from a table.
-- Code (Using Condition)
-- DELETE FROM students WHERE age = 22;

-- Explanation
-- Deletes all rows where age is 22.

-- Code (Using ID – Safe Way)
-- DELETE FROM students WHERE id = 5;

-- Explanation
-- Deletes only the row with id 5.

-- 🔟 Teachers Table Example
-- CREATE TABLE
-- CREATE TABLE teachers (
--     id INT PRIMARY KEY,
--     name VARCHAR(200),
--     city VARCHAR(200)
-- );


-- INSERT DATA
-- INSERT INTO teachers (id, name, city)
-- VALUES 
-- (1,'Ujwal', 'Mohali'),
-- (2,'Sharik', 'Delhi');


-- SELECT
-- SELECT * FROM teachers;

-- DELETE
-- DELETE FROM teachers WHERE id = 1;










-- 🧑‍💼 Practice Task – Employee Table
-- Task:
-- Create an Employee table, insert at least 5 rows, display the table, and delete any 2 rows using id.
-- Code
-- CREATE TABLE employee (
--     emp_id INT PRIMARY KEY,
--     name VARCHAR(100),
--     department VARCHAR(50),
--     salary INT
-- );

-- INSERT INTO employee (emp_id, name, department, salary)
-- VALUES
-- (1,'Rahul','IT',50000),
-- (2,'Amit','HR',40000),
-- (3,'Neha','Finance',55000),
-- (4,'Suresh','IT',60000),
-- (5,'Pooja','Marketing',45000);

-- SELECT * FROM employee;

-- DELETE FROM employee WHERE emp_id = 2;
-- DELETE FROM employee WHERE emp_id = 4;







