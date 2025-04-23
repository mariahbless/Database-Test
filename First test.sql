CREATE DATABASE finansesdb;
USE finansesdb;
CREATE TABLE finanse(
studentID int,
Tuition_Fee varchar(200),
Adminstration_Fee varchar(250),
Exam_Fee varchar(200),
Medical_Fee varchar(260)
);

INSERT INTO finanse (studentID, Tuition_Fee, Adminstration_Fee, Exam_Fee, Medical_Fee)
VALUES ('235', '30000', '5000', '3000', '4000'),
	   ('26', '40000', '5000', '2000', '4000'),
      ('1', '34000', '5000', '3000', '4000'),
      ('2', '23000', '5000', '3000', '4000'),
      ('3', '20000', '5000', '3000', '4000'),
      ('29', '35000', '5000', '2000', '4000'),
      ('127', '28000', '5000', '3000', '4000');

SELECT studentID, Tuition_Fee
FROM finanse;

UPDATE students
SET studentName = 'Nelson'
WHERE StudentID = 26;


CREATE DATABASE studentdb;
USE studentdb;
CREATE TABLE students(
studentName,
StudentID varchar(200),
Birthdate varchar(250),
Years varchar(200),
MobileNo varchar(260)
);

INSERT INTO students (studentName,StudentID ,Birthdate ,Years ,MobileNo )
VALUES ('Jane', '235', '12/1/1987', 'Y1S2', '0722245321'),
       ('Nicholas', '26', '22/7/2002', 'Y1S1', '07204231'),
       ('Cyrus', '1', '15/6/1989', 'Y2S1', '0704231345'),
       ('Neema', '2', '29/11/2008', 'Y2S1', '0733876987'),
       ('Caroline', '3', '18/10/2002', 'Y1S1', '0732568448'),
       ('Judith', '29', '17/6/2003', 'Y4S2', '0711234567'),
       ('Grace', '127', '14/1/2002', 'Y1S2', '0733765987');
	  
SELECT students.studentName, students.StudentID, finanse.Tuition_Fee
FROM students
JOIN finanse ON students.StudentID = finanse.studentID
WHERE students.Years = 'Y1S1';


SELECT students.studentName, students.StudentID, students.Years, finanse.Tuition_Fee
FROM students
JOIN finanse ON students.StudentID = finanse.studentID
WHERE finanse.Tuition_Fee >= 30000;


INSERT INTO students (studentName, StudentID, Birthdate, Years, MobileNo)
VALUES ('Dan', '150', '20/4/2001', 'Y1S2', '0723456123');

SELECT 
    MAX(Tuition_Fee) AS "highest amount",
    MIN(Tuition_Fee) AS "lowest amount"
FROM finanse;


















 
 
