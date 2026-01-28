CREATE TABLE Students(
       std_id INT PRIMARY KEY,
	   std_name VARCHAR(100),
	   std_course VARCHAR(100)
);
INSERT INTO Students VALUES
(1,'Suhani','B.C.A'),
(2,'Neha','BTech'),
(3,'Nisha','MBA'),
(4,'Rahul','MCA'),
(5,'Piyush','BCA'),
(6,'Aditi','BBA'),
(7,'Shobhit','MTech');
SELECT * FROM Students;

UPDATE Students
SET std_course ='MBBS'
WHERE std_id = 2;

ALTER TABLE Students
ADD std_roll INT;

UPDATE Students
SET std_roll = 129
WHERE std_id = 1;

TRUNCATE TABLE Students;
DROP TABLE Students;
