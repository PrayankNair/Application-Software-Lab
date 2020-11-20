CREATE TABLE Employee (
	empid VARCHAR(4) NOT NULL,
	name VARCHAR(10) NOT NULL,
	designation VARCHAR(30),
	dob DATE,
	salary INT,
	PRIMARY KEY (empid)
);

CREATE TABLE Employeedetails (
	code INT NOT NULL,
	age INT,
	city VARCHAR(30),
	empid VARCHAR(4),
	PRIMARY KEY (code),
	FOREIGN KEY (empid) REFERENCES Employee(empid)
);

INSERT INTO Employee VALUES('e1','Jack','Analyst','1992-10-20',20000);
INSERT INTO Employee VALUES('e2','Kate','UX Designer','1995-03-12',15000);
INSERT INTO Employee VALUES('e3','James','Web Developer','1992-04-26',25000);

INSERT INTO Employeedetails VALUES(001,34,'New Jersey','e1');
INSERT INTO Employeedetails VALUES(002,36,'Boston','e2');

SELECT * FROM Employee WHERE empid IN (SELECT empid FROM Employeedetails);

SELECT * FROM Employee WHERE empid NOT IN (SELECT empid FROM Employeedetails);