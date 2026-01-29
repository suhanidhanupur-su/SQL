CREATE TABLE coll_std(
       std_id INT PRIMARY KEY,
	   std_name VARCHAR(50),
	   col_name VARCHAR(50),
	   roll_no INT
);
INSERT INTO coll_std VALUES
(1,'suhani','Delhi university',101),
(2,'Neha','Parul university',102),
(3,'Aditi','Amity university',103),
(4,'Rahul','LPU',104),
(5,'Rohit','Shobhit university',105);

SELECT * FROM coll_std;

UPDATE coll_std
SET roll_no = 100 
WHERE std_id = 1;

ALTER TABLE coll_std
ADD Course VARCHAR(50);

UPDATE coll_std
SET Course = 'BCA'
WHERE std_id = 1;

ALTER TABLE coll_std
DROP COLUMN roll_no;

TRUNCATE TABLE coll_std;




