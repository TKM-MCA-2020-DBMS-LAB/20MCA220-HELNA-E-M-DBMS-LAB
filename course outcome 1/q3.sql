create database organization;
use organization;
create table employee(emp_no INT PRIMARY KEY , emp_name VARCHAR(20), designation VARCHAR(30), dept_no INT, salary INT, mobile_no NUMERIC,FOREIGN KEY(dept_no) REFERENCES department(dept_no));

create table department(dept_no INT PRIMARY KEY,dept_name VARCHAR(30),location VARCHAR(30));

insert into employee values(01,'anu','head officer',1,30000,9544428692);
insert into employee values(02,'sid','asst.manager',2,20000,7902331120);
insert into employee values(03,'aishu','receptionist',3,3000,8982240696);
insert into employee values(04,'shivani','admin.officer',4,10000,8289942335);
insert into employee values(05,'yash','clerk',5,2000,9832245784);

insert into department values(1,'head office','first floor');
insert into department values(2,'mangement department','second floor');
insert into department values(3,'finance department','first floor');
insert into department values(4,'admin. office','ground floor');
insert into department values(5,'enquiry','ground floor');


select * from employee;
select * from department;

/* (i)	Add 5 rows in the employee and dept tables */
insert into employee values(06,'sara','head officer',6,40000,9544428692);
insert into employee values(07,'varun','asst.manager',2,35000,7902331120);
insert into employee values(08,'john','receptionist',8,7000,8982240696);
insert into employee values(09,'ranveer','typist',9,20000,8289942335);
insert into employee values(10,'kajal','clerk',10,3500,9832245784);

insert into department values(6,'head office','first floor');
insert into department values(7,'mangement department','second floor');
insert into department values(8,'finance department','first floor');
insert into department values(9,'admin. office','ground floor');
insert into department values(10,'enquiry','ground floor');

/*(ii)Display all the records from the above tables */
select * from employee;
select * from department;

/*(iii)Display the empno and name of all the employees from department no2 */
select emp_no,emp_name from employee where dept_no=2;

/* (iv)Display empno,name,designation,dept no and salary in the descending order of salary */
select emp_no,emp_name,designation,dept_no,salary from employee order by salary desc;

/* (v)	Display the empno and name of all employees whose salary is between 2000 and 5000 */
select emp_no,emp_name from employee where salary between 2000 and 5000;

/* (vi)	Display all designations without duplicate values */
select distinct designation from employee;

/* (vii)	Display the dept name and total salary of employees of each department*/
select dept_no,sum(salary) from employee group by dept_no;

/* (viii)	Change the salary of employees to 25000 whose designation is ‘Typist’ */
update employee set salary =25000 where designation ="typist";

/*(ix)Change the mobile no of employee named ‘john’ */
update employee set mobile_no=9374787487 where emp_name="john";

/* (x)	Delete all employees whose salaries are equal to Rs.7000 */
delete from employee where salary=7000;

/*(xi)Select the department that has total salary paid for its employees more than 25000 */
select dept_no,sum(salary) from employee group by dept_no having sum(salary)>25000;
