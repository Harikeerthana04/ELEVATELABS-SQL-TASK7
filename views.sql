mysql> create database task7;
Query OK, 1 row affected (0.01 sec)

mysql> use task7;
Database changed
mysql> CREATE TABLE Employees (
    ->     emp_id INT PRIMARY KEY,
    ->     name VARCHAR(50),
    ->     department VARCHAR(50),
    ->     salary INT
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql>
mysql> CREATE TABLE Departments (
    ->     dept_id INT PRIMARY KEY,
    ->     dept_name VARCHAR(50),
    ->     location VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.01 sec)

mysql> INSERT INTO Employees VALUES (1, 'Hari', 'HR', 40000), (2, 'Keerthana', 'IT', 60000);
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Departments VALUES (1, 'HR', 'Chennai'), (2, 'IT', 'Hyderabad');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> CREATE VIEW EmpDetails AS
    -> SELECT E.emp_id, E.name, E.department, E.salary, D.location
    -> FROM Employees E
    -> JOIN Departments D ON E.department = D.dept_name;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM EmpDetails;
+--------+-----------+------------+--------+-----------+
| emp_id | name      | department | salary | location  |
+--------+-----------+------------+--------+-----------+
|      1 | Hari      | HR         |  40000 | Chennai   |
|      2 | Keerthana | IT         |  60000 | Hyderabad |
+--------+-----------+------------+--------+-----------+
2 rows in set (0.01 sec)

mysql> UPDATE EmpDetails
    -> SET salary = 65000
    -> WHERE name = 'Keerthana';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EmpDetails;
+--------+-----------+------------+--------+-----------+
| emp_id | name      | department | salary | location  |
+--------+-----------+------------+--------+-----------+
|      1 | Hari      | HR         |  40000 | Chennai   |
|      2 | Keerthana | IT         |  65000 | Hyderabad |
+--------+-----------+------------+--------+-----------+
2 rows in set (0.00 sec)