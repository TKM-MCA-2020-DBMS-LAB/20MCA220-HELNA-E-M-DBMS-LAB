mysql>  use organization;
Database changed
mysql> show tables;
+------------------------+
| Tables_in_organization |
+------------------------+
| department             |
| employee               |
+------------------------+
2 rows in set (0.00 sec)

mysql> describe department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Dept_no   | int         | NO   | PRI | NULL    |       |
| Dept_name | varchar(20) | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from department;
+---------+------------+
| Dept_no | Dept_name  |
+---------+------------+
|       1 | PRODUCTION |
|       2 | MARKETING  |
|       3 | fINANCE    |
|       4 | HR         |
+---------+------------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+------------+------------------+--------------+------------+---------+--------+-------------+
| Emp_no | Emp_name | DOB        | Address          | Date_of_Join | Mobile_no  | Dept_no | Salary | Designation |
+--------+----------+------------+------------------+--------------+------------+---------+--------+-------------+
|      1 | Triveni  | 1999-04-12 | Kozhikode        | 2020-05-06   | 9633019940 |       3 |  35000 | NULL        |
|      2 | Anu      | 1999-11-12 | Thiruvanthapuram | 2021-01-08   | 9895673412 |       2 |   8500 | NULL        |
|      3 | Yash     | 1994-10-15 | Kochi            | 2018-11-15   | 9746568910 |       4 |  40000 | NULL        |
|      4 | John     | 1992-10-19 | Trivandrum       | 2018-11-20   | 9746563456 |       1 |  40000 | NULL        |
+--------+----------+------------+------------------+--------------+------------+---------+--------+-------------+
4 rows in set (0.00 sec)

mysql> create view Manager as SELECT emp_name,DOB,salary from employee,department;
Query OK, 0 rows affected (0.01 sec)

mysql> select distinct e.emp_name from employee e, Manager m where e.salary >m.salary;
+----------+
| emp_name |
+----------+
| Triveni  |
| Yash     |
| John     |
+----------+
3 rows in set (0.01 sec)

mysql> DROP VIEW MANAGER;
Query OK, 0 rows affected (0.01 sec)
