CREATE DATABASE Organization;      
USE Organization;                   
CREATE TABLE Employee(Emp_no INT PRIMARY KEY,Emp_name VARCHAR(30) NOT NULL,Address VARCHAR(30),DOB DATE NOT NULL,Date_of_Join DATE,Mobile_no NUMERIC,Dept_no INT,Salary INT,FOREIGN KEY(Dept_no) REFERENCES Department(Dept_no));    
CREATE TABLE Department(Dept_no INT PRIMARY KEY,Dept_name VARCHAR(30),Location VARCHAR(30));

INSERT INTO Employee VALUES(1,"anaswara","guruvayoor",'2000-05-01','2016-05-06',9856412245,2,50000);
INSERT INTO Employee VALUES(2,"Archa","marathamcode",'2000-04-10','2017-01-29',9956428795,1,45000);
INSERT INTO Employee VALUES(3,"vindu","thrissur",'1999-05-15','2018-03-15',9956423885,3,40000);
INSERT INTO Employee VALUES(4,"chandni","koottanad",'1997-10-29','2019-06-03',9854776953,4,250000);

INSERT INTO Department VALUES(1,"HEAD OFFICE","Building no.1");
INSERT INTO Department VALUES(2,"FINANCE DEPARTMENT","Building no.2");
INSERT INTO Department VALUES(3,"MANAGEMENT DEPARTMENT","Building no.3");
INSERT INTO Department VALUES(4,"CUSTOMER SERVICE OFFICE","Building no.4");

SHOW TABLES;                                 
DESCRIBE Employee;                           
DESCRIBE Department;
SELECT * from Employee;
SELECT * from Department;

ALTER TABLE Employee  
ADD Designation VARCHAR(50);     
DESCRIBE Employee;
ALTER TABLE Department
DROP COLUMN Location;          

DROP TABLE Employee;
DROP TABLE Department;                   
DROP DATABASE Organization; 
