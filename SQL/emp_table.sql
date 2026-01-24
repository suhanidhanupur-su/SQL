CREATE TABLE Employee(
       emp_id INT PRIMARY KEY,
	   emp_name VARCHAR(50),
	   emp_dep VARCHAR(50),
	   salary INT
);

INSERT INTO Employee VALUES
(1,'Suhani','IT',45000),
(2,'Neha','HR',50000),
(3,'Radha','Finance',55000);

SELECT * FROM Employee;

UPDATE Employee
SET salary =85000
WHERE emp_id = 1;


DELETE FROM Employee
WHERE emp_id = 2;

ALTER TABLE Employee
ADD city VARCHAR (50);

UPDATE Employee
SET city = 'Noida'
WHERE emp_id = 1;

TRUNCATE TABLE Employee;
DROP TABLE  Employee; 

