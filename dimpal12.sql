JOINS PART:

mysql> use joins;
Database changed
mysql> create table department(dept_id int(20)primary key not null,dept_name varchar(30) not null);
Query OK, 0 rows affected, 1 warning (0.12 sec)

mysql> insert into department values ('1','HR'),('2','IT'),('3','FINANCE'),('4','MARKETING');
Query OK, 4 rows affected (0.07 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.00 sec)


mysql> create table employee(emp_id int primary key not null,emp_name varchar(10)not null,dept_id int ,foreign key(dept_id) references department(dept_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(10) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.07 sec)

mysql> insert into employee values(1,'dimpal',1),(2,'jasleen',2),(3,'maya',3),(4,'rohini',4);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | dimpal   |       1 |
|      2 | jasleen  |       2 |
|      3 | maya     |       3 |
|      4 | rohini   |       4 |
+--------+----------+---------+
4 rows in set (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.01 sec)

mysql> select emp_name, dept_name from employee inner join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dimpal   | HR        |
| jasleen  | IT        |
| maya     | FINANCE   |
| rohini   | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee left join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dimpal   | HR        |
| jasleen  | IT        |
| maya     | FINANCE   |
| rohini   | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee right join department on employee.dept_id = department.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| dimpal   | HR        |
| jasleen  | IT        |
| maya     | FINANCE   |
| rohini   | MARKETING |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee full join department ;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| rohini   | HR        |
| maya     | HR        |
| jasleen  | HR        |
| dimpal   | HR        |
| rohini   | IT        |
| maya     | IT        |
| jasleen  | IT        |
| dimpal   | IT        |
| rohini   | FINANCE   |
| maya     | FINANCE   |
| jasleen  | FINANCE   |
| dimpal   | FINANCE   |
| rohini   | MARKETING |
| maya     | MARKETING |
| jasleen  | MARKETING |
| dimpal   | MARKETING |
+----------+-----------+
16 rows in set, 1 warning (0.01 sec)

mysql> select emp_name, dept_name from employee cross join department ;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| rohini   | HR        |
| maya     | HR        |
| jasleen  | HR        |
| dimpal   | HR        |
| rohini   | IT        |
| maya     | IT        |
| jasleen  | IT        |
| dimpal   | IT        |
| rohini   | FINANCE   |
| maya     | FINANCE   |
| jasleen  | FINANCE   |
| dimpal   | FINANCE   |
| rohini   | MARKETING |
| maya     | MARKETING |
| jasleen  | MARKETING |
| dimpal   | MARKETING |
+----------+-----------+
16 rows in set (0.00 sec)



STORE PROCEDURE PART:


select * from employeee' at line 1
mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> DELIMITER ;
mysql>
mysql> DELIMITER ;
mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeee()
    -> BEGIN
    ->     SELECT * FROM Employeee;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql>
mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE GetEmployeeeByDept(IN dept_name VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employeee
    ->     WHERE department = dept_name;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> call getemployeeebydept('HR');
+----+--------+------------+--------+
| id | name   | department | salary |
+----+--------+------------+--------+
|  1 | dimpal | HR         |   1000 |
+----+--------+------------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call getemployeeebydept('IT');
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployeee(
    ->     IN  id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employeee(id, name, depart, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> DROP PROCEDURE AddEmployeee;
Query OK, 0 rows affected (0.03 sec)

mysql> DROP PROCEDURE IF EXISTS AddEmployeee;
Query OK, 0 rows affected, 1 warning (0.01 sec)

mysql> DELIMITER //
mysql>
mysql> CREATE PROCEDURE AddEmployeee(
    ->     IN id INT,
    ->     IN name VARCHAR(50),
    ->     IN dept VARCHAR(50),
    ->     IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employeee(id, name, department, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL AddEmployeee(2,'ten','IT',12000);
Query OK, 1 row affected (0.01 sec)

mysql> select @total;
+----------------+
| @total         |
+----------------+
| NULL           |
+----------------+
1 row in set (0.00 sec)


mysql> select @total;
+----------------+
| @total         |
+----------------+
| NULL           |
+----------------+
1 row in set (0.00 sec)

mysql>
mysql> CREATE PROCEDURE GetEmployeeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->     FROM Employeee;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER ;
mysql> CALL GetEmployeeeCount(@total);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.00 sec)

mysql>
