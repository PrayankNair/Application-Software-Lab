USE ASlab;

CREATE TABLE Employee (
    Code INT PRIMARY KEY,
    Name VARCHAR(20),
    DOB DATE,
    Designation VARCHAR(50),
    Salary INT
);

INSERT INTO Employee VALUES(001, 'Harry', '1989-11-14', 'Software Engineer', 50000);
INSERT INTO Employee VALUES(002, 'Debra', '1991-01-21', 'Analyst', 25000);
INSERT INTO Employee VALUES(003, 'Cody', '1994-05-19', 'Designer', 45000);
INSERT INTO Employee VALUES(004, 'Chuck', '1986-03-26', 'Clerk', 30000);
INSERT INTO Employee VALUES(005, 'Astor', '1990-10-15', 'Manager', 80000);

SELECT SUM(Salary) FROM Employee WHERE Designation='Clerk';

SELECT MAX(Salary) FROM Employee;

SELECT AVG(Salary) FROM Employee;

SELECT MIN(Salary) FROM Employee;

SELECT COUNT(Code) FROM Employee;