-- REGISTRATION NUMBER 031 / 222041

-- Question 6 .a.
CREATE TABLE employees (Id bigint PRIMARY KEY NOT NULL,
						Name varchar (59) NOT NULL,
						Age int,
						Address varchar (59));

INSERT INTO employees (Id,Name,Age,Address)
VALUES ('1001','Rohan',26,'Delhi'),
	   ('1002','Ankit',30,'Gurgaon'),
	   ('1003','Gaurav',27,'Mumbai'),
	   ('1004','Raja',32,'Nagpur');

-- OTHER STATEMENTS
-- a.
SELECT * FROM employees WHERE Id = '1004';
-- b.
SELECT * FROM employees;
-- c.
SELECT * FROM employees WHERE Name LIKE 'R%';
-- d.
SELECT Id,Age,Name FROM employees;
SELECT Id,Age,Name FROM employees DESC;
-- e.
SELECT DISTINCT Address FROM employees;
