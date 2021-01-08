Use ASlab;

CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('J02','Jim','1984-02-02','CEO',190000.78),
('M12','Michael','1980-01-12','Analyst',85000.78),
('R22','Ryan','1998-08-22','Clerk',59000.78),
('K20','Kevin','1969-04-20','Accountant',59000.18);

SELECT * FROM Employee ORDER BY name DESC;

CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'Edapally',290000.25),
(1990002,'Vytilla',291233.22),
(1990003,'Maradu',123570.1),
(1990004,'Kalamassery',2239083.78),
(1990005,'Thopumpadi',100090.90);

SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;