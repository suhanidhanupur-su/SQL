CREATE TABLE student_table (
    std_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    roll INT NOT NULL,
    class VARCHAR(50),
    city VARCHAR(50),
    reg_no INT UNIQUE
);

INSERT INTO student_table (std_id, name, roll, class, city, reg_no) VALUES
(111, 'Rohit', 2000, '10th', 'Patna', 10001),
(222, 'Rohan', 2001, '11th', 'Mohali', 10002),
(333, 'Tridev', 2002, 'BCA', 'Delhi', 10003),
(444, 'Somu', 2003, 'Plane B.A', 'Sirari', 10004),
(5555, 'Vicky', 2004, 'B.Tech', 'Bathinda', 10005);


select * from student_table;

CREATE TABLE library (
    std_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    issue_book VARCHAR(100)
);

INSERT INTO library (std_id, name, issue_book) VALUES
(111, 'Rohit', 'H.C Verma'),
(222, 'Rohan', 'Python'),
(333, 'Tridev', 'R.D Sharma');


select * from library;

SELECT 
    student_table.std_id,
    student_table.name,
    student_table.class,
    student_table.city,
    library.issue_book
FROM student_table
left JOIN library
ON student_table.std_id = library.std_id;
dim-tvhd-qgo