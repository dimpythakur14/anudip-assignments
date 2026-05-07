
mysql> use ecommerce
Database changed
mysql> show databases
    
    -> create table;

show tables
create table' at line 2
mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| costomer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.02 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> insert into customer(costomer_id,name,city,email,address,phone_no,pincode) values('c101','dimpal','airoli','nana road thane','abc@gmail.com','1234567890','123456');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+--------+--------+-----------------+---------------+------------+---------+
| costomer_id | name   | city   | email           | address       | phone_no   | pincode |
+-------------+--------+--------+-----------------+---------------+------------+---------+
| c101        | dimpal | airoli | nana road thane | abc@gmail.com | 1234567890 |  123456 |
+-------------+--------+--------+-----------------+---------------+------------+---------+
1 row in set (0.00 sec)

mysql> select costomer_id,name from customer;
+-------------+--------+
| costomer_id | name   |
+-------------+--------+
| c101        | dimpal |
+-------------+--------+
1 row in set (0.00 sec)

mysql> insert into customer values ('c102','jasleen','mulund','shankar road','jass12@gmail.com','1223445670','123456');
Query OK, 1 row affected (0.06 sec)

mysql> insert into customer values('c103','jaya','mumbai','123 road','cvd@gmail@.com','1234567890','123456'),('c104','maya','pune','ganpati marg','maya@gmail.com','1234567890','123456');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| costomer_id | varchar(5)   | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer modify costomer_id varchar(15) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer
    -> desc customer;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| costomer_id | varchar(15)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null,add country varchar(20) not null;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| costomer_id | varchar(15)  | NO   | PRI | NULL    |       |
| name        | varchar(10)  | NO   |     | NULL    |       |
| city        | varchar(10)  | NO   |     | NULL    |       |
| email       | varchar(20)  | NO   |     | NULL    |       |
| address     | varchar(100) | NO   |     | NULL    |       |
| phone_no    | varchar(10)  | NO   |     | NULL    |       |
| pincode     | int          | NO   |     | NULL    |       |
| bill_no     | int          | NO   |     | NULL    |       |
| state       | varchar(10)  | NO   |     | NULL    |       |
| country     | varchar(20)  | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| orders              |
| product             |
+---------------------+
3 rows in set (0.00 sec)

mysql> alter table customer change column name customer_name varchar(10) not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| costomer_id   | varchar(15)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_no      | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> alter table customer modify costomer_id varchar(15) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| costomer_id   | varchar(15)  | NO   | PRI | NULL    |       |
| customer_name | varchar(10)  | NO   |     | NULL    |       |
| city          | varchar(10)  | NO   |     | NULL    |       |
| email         | varchar(20)  | NO   |     | NULL    |       |
| address       | varchar(100) | NO   |     | NULL    |       |
| phone_no      | varchar(10)  | NO   |     | NULL    |       |
| pincode       | int          | NO   |     | NULL    |       |
| bill_no       | int          | NO   |     | NULL    |       |
| state         | varchar(10)  | NO   |     | NULL    |       |
| country       | varchar(20)  | NO   |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
10 rows in set (0.00 sec)
mysql> create table demo(id varchar (5) not null primary key,name varchar(20)not null);
Query OK, 0 rows affected (0.04 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> show databases;
+---------------------------+
| Database                  |
+---------------------------+
| ecommerce                 |
| information_schema        |
| mysql                     |
| performance_schema        |
| sakila                    |
| student_management_system |
| sys                       |
| world                     |
+---------------------------+
8 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 1223445670 |  123456 |       0 |       |         |
| c103        | jaya          | mumbai | 123 road        | cvd@gmail@.com   | 1234567890 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
4 rows in set (0.00 sec)

mysql> delete from customer where costomer_id = 'c103';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 1223445670 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 1223445670 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.08 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| costomer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> insert into demo values ('101','dimpy');
Query OK, 1 row affected (0.01 sec)

mysql> select * from demo;
+-----+-------+
| id  | name  |
+-----+-------+
| 101 | dimpy |
+-----+-------+
1 row in set (0.00 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.06 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(5)  | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.03 sec)

mysql> desc orders;
ERROR 1146 (42S02): Table 'ecommerce.orders' doesn't exist
mysql>