mysql> USE HostelManagement;
Database changed
mysql>
mysql> CREATE TABLE Hostel (
    ->     hostel_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     hostel_name VARCHAR(100),
    ->     capacity INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE Warden (
    ->     warden_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     contact_number VARCHAR(20)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE Room (
    ->     room_number INT AUTO_INCREMENT PRIMARY KEY,
    ->     room_type VARCHAR(50),
    ->     capacity INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE Student (
    ->     student_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     contact_number VARCHAR(20),
    ->     room_number INT,
    ->     FOREIGN KEY (room_number) REFERENCES Room(room_number)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> CREATE TABLE Fee_Payment (
    ->     payment_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     amount DECIMAL(10,2),
    ->     payment_date DATE
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE Maintenance_Request (
    ->     request_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     student_id INT,
    ->     room_number INT,
    ->     request_date DATE,
    ->     FOREIGN KEY (student_id) REFERENCES Student(student_id),
    ->     FOREIGN KEY (room_number) REFERENCES Room(room_number)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql>
mysql> INSERT INTO Warden (name, contact_number) VALUES
    -> ('Mr. Rajesh Singh', '7700112233'),
    -> ('Mrs. Kavita Sharma', '7800223344'),
    -> ('Mr. Suresh Kumar', '7900334455'),
    -> ('Mrs. Anjali Verma', '8000445566'),
    -> ('Mr. Manoj Patel', '8100556677'),
    -> ('Mrs. Lata Joshi', '8200667788'),
    -> ('Mr. Deepak Nair', '8300778899'),
    -> ('Mrs. Nisha Reddy', '8400889900'),
    -> ('Mr. Ashok Rao', '8500990011'),
    -> ('Mrs. Reema Iyer', '8600111122'),
    -> ('Mr. Vijay Chauhan', '8700222233'),
    -> ('Mrs. Pooja Malik', '8800333344'),
    -> ('Mr. Sanjay Desai', '8900444455'),
    -> ('Mrs. Meena Thomas', '9000555566'),
    -> ('Mr. Harish Yadav', '9100666677'),
    -> ('Mrs. Sheetal Kapoor', '9200777788'),
    -> ('Mr. Rakesh Shah', '9300888899'),
    -> ('Mrs. Seema Gupta', '9400999900'),
    -> ('Mr. Anil Kumar', '9500112233'),
    -> ('Mrs. Rekha Joshi', '9600223344');
Query OK, 20 rows affected (0.00 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Hostel (hostel_name, capacity) VALUES
    -> ('Magnolia Hostel', 100),
    -> ('Maple Hostel', 80),
    -> ('Oak Hostel', 120),
    -> ('Pine Hostel', 90),
    -> ('Cedar Hostel', 110),
    -> ('Birch Hostel', 75),
    -> ('Elm Hostel', 85),
    -> ('Spruce Hostel', 95),
    -> ('Willow Hostel', 105),
    -> ('Redwood Hostel', 115),
    -> ('Fir Hostel', 100),
    -> ('Poplar Hostel', 90),
    -> ('Aspen Hostel', 80),
    -> ('Hickory Hostel', 85),
    -> ('Sequoia Hostel', 120),
    -> ('Cypress Hostel', 95),
    -> ('Maple Leaf Hostel', 75),
    -> ('Chestnut Hostel', 85),
    -> ('Alder Hostel', 90),
    -> ('Beech Hostel', 100);
Query OK, 20 rows affected (0.00 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Room (room_type, capacity) VALUES
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Triple', 3),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Triple', 3),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Triple', 3),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Triple', 3),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Single', 1),
    -> ('Double', 2),
    -> ('Triple', 3),
    -> ('Single', 1);
Query OK, 20 rows affected (0.00 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Student (name, contact_number, room_number) VALUES
    -> ('Ravi Kumar', '8800112233', 1),
    -> ('Neha Sharma', '9900556677', 2),
    -> ('Amit Gupta', '9876543210', 3),
    -> ('Priya Singh', '9123456789', 4),
    -> ('Rohit Verma', '9012345678', 5),
    -> ('Sanya Kapoor', '9988776655', 6),
    -> ('Arjun Patel', '8877665544', 7),
    -> ('Anjali Mehta', '7766554433', 8),
    -> ('Karan Joshi', '6655443322', 9),
    -> ('Simran Kaur', '5544332211', 10),
    -> ('Deepak Yadav', '4433221100', 11),
    -> ('Tanya Reddy', '3322110099', 12),
    -> ('Sameer Khan', '2211009988', 13),
    -> ('Pooja Desai', '1100998877', 14),
    -> ('Rahul Nair', '0099887766', 15),
    -> ('Sneha Iyer', '9988776655', 16),
    -> ('Vikram Chauhan', '8877665544', 17),
    -> ('Ayesha Malik', '7766554433', 18),
    -> ('Aditya Rao', '6655443322', 19),
    -> ('Kavya Thomas', '5544332211', 20);
Query OK, 20 rows affected (0.01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Fee_Payment (amount, payment_date) VALUES
    -> (12000.00, '2025-09-01'),
    -> (11000.00, '2025-09-02'),
    -> (11500.00, '2025-09-03'),
    -> (12500.00, '2025-09-04'),
    -> (13000.00, '2025-09-05'),
    -> (12000.00, '2025-09-06'),
    -> (11000.00, '2025-09-07'),
    -> (11500.00, '2025-09-08'),
    -> (12500.00, '2025-09-09'),
    -> (13000.00, '2025-09-10'),
    -> (12000.00, '2025-09-11'),
    -> (11000.00, '2025-09-12'),
    -> (11500.00, '2025-09-13'),
    -> (12500.00, '2025-09-14'),
    -> (13000.00, '2025-09-15'),
    -> (12000.00, '2025-09-16'),
    -> (11000.00, '2025-09-17'),
    -> (11500.00, '2025-09-18'),
    -> (12500.00, '2025-09-19'),
    -> (13000.00, '2025-09-20');
Query OK, 20 rows affected (0.01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO Maintenance_Request (student_id, room_number, request_date) VALUES
    -> (1, 1, '2025-09-01'),
    -> (2, 2, '2025-09-02'),
    -> (3, 3, '2025-09-03'),
    -> (4, 4, '2025-09-04'),
    -> (5, 5, '2025-09-05'),
    -> (6, 6, '2025-09-06'),
    -> (7, 7, '2025-09-07'),
    -> (8, 8, '2025-09-08'),
    -> (9, 9, '2025-09-09'),
    -> (10, 10, '2025-09-10'),
    -> (11, 11, '2025-09-11'),
    -> (12, 12, '2025-09-12'),
    -> (13, 13, '2025-09-13'),
    -> (14, 14, '2025-09-14'),
    -> (15, 15, '2025-09-15'),
    -> (16, 16, '2025-09-16'),
    -> (17, 17, '2025-09-17'),
    -> (18, 18, '2025-09-18'),
    -> (19, 19, '2025-09-19'),
    -> (20, 20, '2025-09-20');
Query OK, 20 rows affected (0.01 sec)
Records: 20  Duplicates: 0  Warnings: 0

mysql>
mysql> SELECT s.student_id, s.name, s.contact_number, r.room_number, r.room_type
    -> FROM Student s
    -> LEFT JOIN Room r ON s.room_number = r.room_number;
+------------+----------------+----------------+-------------+-----------+
| student_id | name           | contact_number | room_number | room_type |
+------------+----------------+----------------+-------------+-----------+
|          1 | Ravi Kumar     | 8800112233     |           1 | Single    |
|          2 | Neha Sharma    | 9900556677     |           2 | Double    |
|          3 | Amit Gupta     | 9876543210     |           3 | Triple    |
|          4 | Priya Singh    | 9123456789     |           4 | Single    |
|          5 | Rohit Verma    | 9012345678     |           5 | Double    |
|          6 | Sanya Kapoor   | 9988776655     |           6 | Triple    |
|          7 | Arjun Patel    | 8877665544     |           7 | Single    |
|          8 | Anjali Mehta   | 7766554433     |           8 | Double    |
|          9 | Karan Joshi    | 6655443322     |           9 | Single    |
|         10 | Simran Kaur    | 5544332211     |          10 | Double    |
|         11 | Deepak Yadav   | 4433221100     |          11 | Triple    |
|         12 | Tanya Reddy    | 3322110099     |          12 | Single    |
|         13 | Sameer Khan    | 2211009988     |          13 | Double    |
|         14 | Pooja Desai    | 1100998877     |          14 | Triple    |
|         15 | Rahul Nair     | 0099887766     |          15 | Single    |
|         16 | Sneha Iyer     | 9988776655     |          16 | Double    |
|         17 | Vikram Chauhan | 8877665544     |          17 | Single    |
|         18 | Ayesha Malik   | 7766554433     |          18 | Double    |
|         19 | Aditya Rao     | 6655443322     |          19 | Triple    |
|         20 | Kavya Thomas   | 5544332211     |          20 | Single    |
+------------+----------------+----------------+-------------+-----------+
20 rows in set (0.00 sec)

mysql>
mysql> SELECT hostel_id, hostel_name, capacity FROM Hostel;
+-----------+-------------------+----------+
| hostel_id | hostel_name       | capacity |
+-----------+-------------------+----------+
|         1 | Magnolia Hostel   |      100 |
|         2 | Maple Hostel      |       80 |
|         3 | Oak Hostel        |      120 |
|         4 | Pine Hostel       |       90 |
|         5 | Cedar Hostel      |      110 |
|         6 | Birch Hostel      |       75 |
|         7 | Elm Hostel        |       85 |
|         8 | Spruce Hostel     |       95 |
|         9 | Willow Hostel     |      105 |
|        10 | Redwood Hostel    |      115 |
|        11 | Fir Hostel        |      100 |
|        12 | Poplar Hostel     |       90 |
|        13 | Aspen Hostel      |       80 |
|        14 | Hickory Hostel    |       85 |
|        15 | Sequoia Hostel    |      120 |
|        16 | Cypress Hostel    |       95 |
|        17 | Maple Leaf Hostel |       75 |
|        18 | Chestnut Hostel   |       85 |
|        19 | Alder Hostel      |       90 |
|        20 | Beech Hostel      |      100 |
+-----------+-------------------+----------+
20 rows in set (0.00 sec)

mysql>
mysql> SELECT payment_id, amount, payment_date FROM Fee_Payment;
+------------+----------+--------------+
| payment_id | amount   | payment_date |
+------------+----------+--------------+
|          1 | 12000.00 | 2025-09-01   |
|          2 | 11000.00 | 2025-09-02   |
|          3 | 11500.00 | 2025-09-03   |
|          4 | 12500.00 | 2025-09-04   |
|          5 | 13000.00 | 2025-09-05   |
|          6 | 12000.00 | 2025-09-06   |
|          7 | 11000.00 | 2025-09-07   |
|          8 | 11500.00 | 2025-09-08   |
|          9 | 12500.00 | 2025-09-09   |
|         10 | 13000.00 | 2025-09-10   |
|         11 | 12000.00 | 2025-09-11   |
|         12 | 11000.00 | 2025-09-12   |
|         13 | 11500.00 | 2025-09-13   |
|         14 | 12500.00 | 2025-09-14   |
|         15 | 13000.00 | 2025-09-15   |
|         16 | 12000.00 | 2025-09-16   |
|         17 | 11000.00 | 2025-09-17   |
|         18 | 11500.00 | 2025-09-18   |
|         19 | 12500.00 | 2025-09-19   |
|         20 | 13000.00 | 2025-09-20   |
+------------+----------+--------------+
20 rows in set (0.00 sec)

mysql>
mysql> SELECT mr.request_id, mr.request_date, s.name AS student_name, r.room_number
    -> FROM Maintenance_Request mr
    -> JOIN Student s ON mr.student_id = s.student_id
    -> JOIN Room r ON mr.room_number = r.room_number;
+------------+--------------+----------------+-------------+
| request_id | request_date | student_name   | room_number |
+------------+--------------+----------------+-------------+
|          1 | 2025-09-01   | Ravi Kumar     |           1 |
|          2 | 2025-09-02   | Neha Sharma    |           2 |
|          3 | 2025-09-03   | Amit Gupta     |           3 |
|          4 | 2025-09-04   | Priya Singh    |           4 |
|          5 | 2025-09-05   | Rohit Verma    |           5 |
|          6 | 2025-09-06   | Sanya Kapoor   |           6 |
|          7 | 2025-09-07   | Arjun Patel    |           7 |
|          8 | 2025-09-08   | Anjali Mehta   |           8 |
|          9 | 2025-09-09   | Karan Joshi    |           9 |
|         10 | 2025-09-10   | Simran Kaur    |          10 |
|         11 | 2025-09-11   | Deepak Yadav   |          11 |
|         12 | 2025-09-12   | Tanya Reddy    |          12 |
|         13 | 2025-09-13   | Sameer Khan    |          13 |
|         14 | 2025-09-14   | Pooja Desai    |          14 |
|         15 | 2025-09-15   | Rahul Nair     |          15 |
|         16 | 2025-09-16   | Sneha Iyer     |          16 |
|         17 | 2025-09-17   | Vikram Chauhan |          17 |
|         18 | 2025-09-18   | Ayesha Malik   |          18 |
|         19 | 2025-09-19   | Aditya Rao     |          19 |
|         20 | 2025-09-20   | Kavya Thomas   |          20 |
+------------+--------------+----------------+-------------+
20 rows in set (0.00 sec)

mysql>
mysql> SELECT warden_id, name, contact_number FROM Warden;
+-----------+---------------------+----------------+
| warden_id | name                | contact_number |
+-----------+---------------------+----------------+
|         1 | Mr. Rajesh Singh    | 7700112233     |
|         2 | Mrs. Kavita Sharma  | 7800223344     |
|         3 | Mr. Suresh Kumar    | 7900334455     |
|         4 | Mrs. Anjali Verma   | 8000445566     |
|         5 | Mr. Manoj Patel     | 8100556677     |
|         6 | Mrs. Lata Joshi     | 8200667788     |
|         7 | Mr. Deepak Nair     | 8300778899     |
|         8 | Mrs. Nisha Reddy    | 8400889900     |
|         9 | Mr. Ashok Rao       | 8500990011     |
|        10 | Mrs. Reema Iyer     | 8600111122     |
|        11 | Mr. Vijay Chauhan   | 8700222233     |
|        12 | Mrs. Pooja Malik    | 8800333344     |
|        13 | Mr. Sanjay Desai    | 8900444455     |
|        14 | Mrs. Meena Thomas   | 9000555566     |
|        15 | Mr. Harish Yadav    | 9100666677     |
|        16 | Mrs. Sheetal Kapoor | 9200777788     |
|        17 | Mr. Rakesh Shah     | 9300888899     |
|        18 | Mrs. Seema Gupta    | 9400999900     |
|        19 | Mr. Anil Kumar      | 9500112233     |
|        20 | Mrs. Rekha Joshi    | 9600223344     |
+-----------+---------------------+----------------+
20 rows in set (0.00 sec)
