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
8 rows in set (0.10 sec)

mysql> use ecommerce;
Database changed
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 1223445670 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.01 sec)

mysql> update customer set phone_no = '9902344450' where costomer_id = 'c106';
Query OK, 0 rows affected (0.01 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 1223445670 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> update customer set phone_no = '9902344450' where costomer_id = 'c102';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 9902344450 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%al';
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address       | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%lee';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like '%een';
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email        | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| c102        | jasleen       | mulund | shankar road | jass12@gmail.com | 9902344450 |  123456 |       0 |       |         |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like '%oli';
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address       | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where city like 'mul%';
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email        | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| c102        | jasleen       | mulund | shankar road | jass12@gmail.com | 9902344450 |  123456 |       0 |       |         |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'j_____';
Empty set (0.00 sec)

mysql> select * from customer where customer_name like 'j______';
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email        | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
| c102        | jasleen       | mulund | shankar road | jass12@gmail.com | 9902344450 |  123456 |       0 |       |         |
+-------------+---------------+--------+--------------+------------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)


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
10 rows in set (0.07 sec)

mysql> insert into customer values ('C105', 'Abdul', 'Mumbra', 'mannan23r4@gmail.com', 'MM VALLEY','9372621064', '400612',4,'goa','india');
Query OK, 1 row affected (0.01 sec)
'
mysql> insert into customer (Costomer_id, customer_name, city, email, address, phone_no, pincode,bill_no,state,country)values('C108', 'harshal', 'airoli', 'harshal@gmail.com', 'sector9','9372621064', '400052','2','navimum','america'),('C106', 'parth', 'punji', 'parth@gmail.com', 'sector2','9372678124', '400053','3','goa','korea'),('C107', 'silpa', 'rampur', 'shilpa@gmail.com', '34 shimla','9372621784', '400054','4','shimla','china');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

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
7 rows in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address          | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com    | 1234567890 |  123456 |       0 |       |         |
| c102        | jasleen       | mulund | shankar road    | jass12@gmail.com | 9902344450 |  123456 |       0 |       |         |
| c104        | maya          | pune   | ganpati marg    | maya@gmail.com   | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+------------------+------------+---------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| airoli |
| mulund |
| pune   |
| Mumbra |
| punji  |
| rampur |
+--------+
6 rows in set (0.00 sec)

mysql> select distinct customer_name from customer;
+---------------+
| customer_name |
+---------------+
| dimpal        |
| jasleen       |
| maya          |
| Abdul         |
| parth         |
| silpa         |
| harshal       |
+---------------+
7 rows in set (0.00 sec)

mysql> select * from customer WHERE customer_name = 'dimpal' and bill_no = '0';
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city   | email           | address       | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
| c101        | dimpal        | airoli | nana road thane | abc@gmail.com | 1234567890 |  123456 |       0 |       |         |
+-------------+---------------+--------+-----------------+---------------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer WHERE customer_name AND bill_no >3 ;
Empty set, 7 warnings (0.00 sec)


mysql> select * from customer WHERE customer_name='parth' AND bill_no < 4 ;
+-------------+---------------+-------+-----------------+---------+------------+---------+---------+-------+---------+
| costomer_id | customer_name | city  | email           | address | phone_no   | pincode | bill_no | state | country |
+-------------+---------------+-------+-----------------+---------+------------+---------+---------+-------+---------+
| C106        | parth         | punji | parth@gmail.com | sector2 | 9372678124 |  400053 |       3 | goa   | korea   |
+-------------+---------------+-------+-----------------+---------+------------+---------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer WHERE costomer_id between 'c105'AND 'c108' ;
+-------------+---------------+--------+----------------------+-----------+------------+---------+---------+---------+---------+
| costomer_id | customer_name | city   | email                | address   | phone_no   | pincode | bill_no | state   | country |
+-------------+---------------+--------+----------------------+-----------+------------+---------+---------+---------+---------+
| C105        | Abdul         | Mumbra | mannan23r4@gmail.com | MM VALLEY | 9372621064 |  400612 |       4 | goa     | india   |
| C106        | parth         | punji  | parth@gmail.com      | sector2   | 9372678124 |  400053 |       3 | goa     | korea   |
| C107        | silpa         | rampur | shilpa@gmail.com     | 34 shimla | 9372621784 |  400054 |       4 | shimla  | china   |
| C108        | harshal       | airoli | harshal@gmail.com    | sector9   | 9372621064 |  400052 |       2 | navimum | america |
+-------------+---------------+--------+----------------------+-----------+------------+---------+---------+---------+---------+
4 rows in set (0.00 sec)

mysql>











