USE ASlab;

CREATE table class(
Name char(50),
Id varchar(20));
INSERT INTO class VALUES('DAVE','D101');
COMMIT;
INSERT INTO class VALUES('Mike','M106');
SAVEPOINT A;
INSERT INTO class VALUES('Ashwin','A234');
SAVEPOINT B;
Select * from class;
INSERT INTO class VALUES('Zoe','Z205');
COMMIT;
Select * from class;
ROLLBACK TO B;
Select * from class;
ROLLBACK TO A;
Select * from class;


  
