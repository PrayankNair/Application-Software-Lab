/*Creating the table*/
CREATE TABLE student(
 sno int primary key,
 sname char(50),
 marks int,
 dept varchar(100)); 
/*Entering values to the table*/
INSERT INTO student VALUES(1, 'Dave', 55, 'CSE');
INSERT INTO student VALUES(2, 'Gary', 79, 'Electonics'); 
INSERT INTO student VALUES(3, 'Steve', 87, 'Mechanical');
/*Showing the contents of the table*/
select * from student;
/*Adding age attribute*/
ALTER TABLE student
ADD age int(10);
/*Showing the columns in the table*/
select Columns from student;
/*Changing datatupe size of dept*/
ALTER TABLE student MODIFY column dept varchar(150);
/*Deleting attribute mark*/
ALTER TABLE student DROP column mark;
/*Renaming the table*/
ALTER TABLE student rename to students;
show tables;
/*Deleting all the values from the table*/
DELETE FROM students;
/*Dropping the entire table*/
DROP TABLE students;

 