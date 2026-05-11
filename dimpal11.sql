
mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| product             |
+---------------------+
3 rows in set (0.03 sec)

mysql> select * from customer;
+-------------+---------------+--------+----------------------+------------------+------------+---------+---------+---------+---------+
| costomer_id | customer_name | city   | email                | address          | phone_no   | pincode | bill_no | state   | country |
+-------------+---------------+--------+----------------------+------------------+------------+---------+---------+---------+---------+
| c101        | dimpal        | airoli | nana road thane      | abc@gmail.com    | 1234567890 |  123456 |       0 |         |         |
| c102        | jasleen       | mulund | shankar road         | jass12@gmail.com | 9902344450 |  123456 |       0 |         |         |
| c104        | maya          | pune   | ganpati marg         | maya@gmail.com   | 1234567890 |  123456 |       0 |         |         |
| C105        | Abdul         | Mumbra | mannan23r4@gmail.com | MM VALLEY        | 9372621064 |  400612 |       4 | goa     | india   |
| C106        | parth         | punji  | parth@gmail.com      | sector2          | 9372678124 |  400053 |       3 | goa     | korea   |
| C107        | silpa         | rampur | shilpa@gmail.com     | 34 shimla        | 9372621784 |  400054 |       4 | shimla  | china   |
| C108        | harshal       | airoli | harshal@gmail.com    | sector9          | 9372621064 |  400052 |       2 | navimum | america |
+-------------+---------------+--------+----------------------+------------------+------------+---------+---------+---------+---------+
7 rows in set (0.01 sec)

mysql> create table pruduct(product_id varchar(10) not null primary key,product_name varchar(20) not null,category varchar(20) not null,selling_price double(12,2)not null, original_price double(12,2)not null,stock int not null);
Query OK, 0 rows affected, 2 warnings (0.06 sec)

mysql> insert into pruduct values ('p101','chair','furniture',6000,5000,12);
Query OK, 1 row affected (0.02 sec)

mysql> INSERT INTO pruduct VALUES ('p102','table','furniture',8500,7000,8),('p103','sofa','furniture',25000,22000,5),('p104','bed','furniture',30000,27000,4),('p105','wardrobe','furniture',18000,15000,6);
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> desc pruduct;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| product_id     | varchar(10)  | NO   | PRI | NULL    |       |
| product_name   | varchar(20)  | NO   |     | NULL    |       |
| category       | varchar(20)  | NO   |     | NULL    |       |
| selling_price  | double(12,2) | NO   |     | NULL    |       |
| original_price | double(12,2) | NO   |     | NULL    |       |
| stock          | int          | NO   |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.03 sec)

mysql> select * from pruduct;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select count(*) from pruduct;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.01 sec)

mysql> select max(stock) from pruduct;
+------------+
| max(stock) |
+------------+
|         12 |
+------------+
1 row in set (0.01 sec)

mysql> select * from pruduct;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from pruduct order by stock desc;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from pruduct order by stock desc limit 3;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
+------------+--------------+-----------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> create table employee(employee_id varchar(10) not null primary key,employee_name varchar(20)not null ,department varchar(20) not null,salary int not null);
Query OK, 0 rows affected (0.04 sec)
mysql> insert into employee value('e101','dimpal','HR',40000),('e102','maya','IT',6000),('e103','mahi','IT',7000),('e104','kiya','HR',4500),('e105','harsh','FINANCE',5000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| employee_name | varchar(20) | NO   |     | NULL    |       |
| department    | varchar(20) | NO   |     | NULL    |       |
| salary        | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| e101        | dimpal        | HR         |  40000 |
| e102        | maya          | IT         |   6000 |
| e103        | mahi          | IT         |   7000 |
| e104        | kiya          | HR         |   4500 |
| e105        | harsh         | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |   22250.0000 |
| IT         |    6500.0000 |
| FINANCE    |    5000.0000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
| FINANCE    |      5000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,salary, count(*) from employee group by department , salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  40000 |        1 |
| IT         |   6000 |        1 |
| IT         |   7000 |        1 |
| HR         |   4500 |        1 |
| FINANCE    |   5000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select department, count(*) as total_employee from employee group by department having count(*) > 1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> select department, sum(salary) as total_salary from employee group by department having sum(salary) > 8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department,avg(salary) as average_salary from employee group by department having avg (salary) > 5000;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from pruduct;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select sum(selling_price) from pruduct;
+--------------------+
| sum(selling_price) |
+--------------------+
|           87500.00 |
+--------------------+
1 row in set (0.00 sec)

mysql> select avg(selling_price) from pruduct;
+--------------------+
| avg(selling_price) |
+--------------------+
|       17500.000000 |
+--------------------+
1 row in set (0.00 sec)

mysql> select count(*) from pruduct;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.00 sec)

mysql> select max(stock) from pruduct;
+------------+
| max(stock) |
+------------+
|         12 |
+------------+
1 row in set (0.00 sec)

mysql> select min(stock) from pruduct;
+------------+
| min(stock) |
+------------+
|          4 |
+------------+
1 row in set (0.00 sec)

mysql> select * from pruduct order by stock;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from pruduct order by stock desc;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
| p103       | sofa         | furniture |      25000.00 |       22000.00 |     5 |
| p104       | bed          | furniture |      30000.00 |       27000.00 |     4 |
+------------+--------------+-----------+---------------+----------------+-------+
5 rows in set (0.00 sec)

mysql> select * from pruduct order by stock desc limit 3;
+------------+--------------+-----------+---------------+----------------+-------+
| product_id | product_name | category  | selling_price | original_price | stock |
+------------+--------------+-----------+---------------+----------------+-------+
| p101       | chair        | furniture |       6000.00 |        5000.00 |    12 |
| p102       | table        | furniture |       8500.00 |        7000.00 |     8 |
| p105       | wardrobe     | furniture |      18000.00 |       15000.00 |     6 |
+------------+--------------+-----------+---------------+----------------+-------+
3 rows in set (0.00 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employee_id   | varchar(10) | NO   | PRI | NULL    |       |
| employee_name | varchar(20) | NO   |     | NULL    |       |
| department    | varchar(20) | NO   |     | NULL    |       |
| salary        | int         | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| e101        | dimpal        | HR         |  40000 |
| e102        | maya          | IT         |   6000 |
| e103        | mahi          | IT         |   7000 |
| e104        | kiya          | HR         |   4500 |
| e105        | harsh         | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total_employee from employee group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
| FINANCE    |              1 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
| FINANCE    |         5000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_salary from employee group by department;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |   22250.0000 |
| IT         |    6500.0000 |
| FINANCE    |    5000.0000 |
+------------+--------------+
3 rows in set (0.00 sec)

mysql> select department,avg(salary) as average_salary from employee group by department;
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |     22250.0000 |
| IT         |      6500.0000 |
| FINANCE    |      5000.0000 |
+------------+----------------+
3 rows in set (0.00 sec)

mysql> select department,count(*) as total_employee from employee group by department, salary;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              1 |
| IT         |              1 |
| IT         |              1 |
| HR         |              1 |
| FINANCE    |              1 |
+------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+-------------+---------------+------------+--------+
| employee_id | employee_name | department | salary |
+-------------+---------------+------------+--------+
| e101        | dimpal        | HR         |  40000 |
| e102        | maya          | IT         |   6000 |
| e103        | mahi          | IT         |   7000 |
| e104        | kiya          | HR         |   4500 |
| e105        | harsh         | FINANCE    |   5000 |
+-------------+---------------+------------+--------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total_employee from employee group by department having count(*) > 1;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              2 |
| IT         |              2 |
+------------+----------------+
2 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_salary from employee group by department having sum(salary) > 8000;
+------------+--------------+
| department | total_salary |
+------------+--------------+
| HR         |        44500 |
| IT         |        13000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> 


