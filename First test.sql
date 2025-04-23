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

SELECT * 
 FROM finanses
 WHERE studentID AND Tuition_Fee > 30000;
 
 
 UPDATE finanses 
 SET  = 'Nelson'
 WHERE studentID  = '26'
 
 