USE ASlab;

CREATE TABLE Department (
    Code INT PRIMARY KEY,
    Title VARCHAR(30),
    Dept_Name VARCHAR(50) NOT NULL UNIQUE,
    Dept_id VARCHAR(10),
    Salary INT CHECK (Salary>2000)
);

CREATE TABLE Instructor (
    ID INT DEFAULT 0 PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Code INT,
    FOREIGN KEY (Code) REFERENCES Department(Code)
);

INSERT INTO Department VALUES(001,'Executive','Quality Analysis','QA301',60000);
INSERT INTO Department VALUES(002,'Manager','R&D','RD0212',80000);

INSERT INTO Instructor VALUES(75,'Zoe',001);
INSERT INTO Instructor VALUES(62,'Harold',002);