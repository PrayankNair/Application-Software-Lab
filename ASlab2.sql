/*Creating table*/
CREATE table Employee(Code CHAR(4),
Name CHAR(10),
Designation CHAR(30),
Dob date,
Salary numeric);
/*Inserting tuples*/
INSERT INTO Employee VALUES('E1','David','Manager','1982-10-11','45000');
INSERT INTO Employee VALUES('E2','Stephen','Administrator','1978-06-21','30000');
/*Selecting all details from the table*/
SELECT * FROM Employee;
/*Altering the salary of an employee*/
UPDATE Employee
SET Salary = '50000'
WHERE Code = 'E1';
/*Deleting a tuple from the table*/
DELETE FROM Employee 
WHERE Code = 'E1';
 