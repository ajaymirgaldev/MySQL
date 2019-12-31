/*Create Data Base name misc*/
CREATE DATABASE misc;

/*Activate Data Base*/
USE misc;

DROP TABLE Employees;

/*create table name Student in misc db*/
CREATE TABLE Students (
    Sr_No varchar(255),
    Name varchar(255),
    Last_Name varchar(255),
    ID int,
    Stream varchar(255),
    Java varchar(255),
    C varchar(255),
    Dotnet varchar(255),
    Oracle varchar(255)
);

/*Check Table Employees*/
SELECT * FROM Students;

/* Add Values to table Student */
INSERT INTO Students (Sr_No, Name, Last_Name, ID, Stream, Java, C, Dotnet, Oracle)
VALUE  (16, "A16", "A16X", 016, "BTECH", 70, 50, 66, 64),
 (2, "A2", "A2X", 002, "BTECH", 70, 50, 66, 64),
 (3, "A3", "A3X", 003, "BTECH", 60, 70, 87, 66),
 (4, "A4", "A4X", 004, "BTECH", 40, 70, 56, 69),
 (5, "A5", "A5X", 005, "MTECH", 70, 90, 76, 60),
 (6, "A6", "A6X", 006, "BTECH", 20, 40, 87, 69),
 (7, "A7", "A7X", 007, "BTECH", 90, 90, 99, 00),
 (8, "A8", "A8X", 008, "BTECH", 60, 50, 56, 50),
 (9, "A9", "A9X", 009, "MTECH", 70, 80, 86, 70),
 (10, "A10", "A10X", 010, "BTECH", 95, 77, 56, 55),
 (11, "A11", "A11X", 011, "BTECH", 55, 44, 76, 54),
 (12, "A12", "A12X", 012, "BTECH", 40, 76, 59, 78),
 (13, "A13", "A13X", 013, "MTECH", 70, 78, 56, 98),
 (14, "A14", "A14X", 014, "BTECH", 60, 88, 98, 78),
 (15, "A15", "A15X", 015, "MTECH", 80, 87, 65, 60);

/*Check Table Student*/
SELECT * FROM Students;

/*Delete Table row matching Sr no 1
SET SQL_SAFE_UPDATES = 0;
SELECT FROM Students WHERE Sr_No=1;*/

/*Check Table Student*/
SELECT * FROM Students;

DELETE FROM Students WHERE Sr_No=1;

INSERT INTO Students (Sr_No, Name, Last_Name, ID, Stream, Java, C, Dotnet, Oracle)
VALUE  (1, "A1", "A1X", 01, "BTECH", 70, 50, 66, 64);

/*Check Table Student*/
SELECT * FROM Students;

/*SELECT range as per the marks obtained in the multiple subjects*/
SELECT * FROM Students WHERE Java >'60' AND Oracle >'60' AND C >'60';

/*PRIMARY KEY on ALTER TABLE*/
ALTER TABLE Students ADD PRIMARY KEY (ID);

/*Check Table Student*/
SELECT * FROM Students;

/*DROP a PRIMARY KEY Constraint
ALTER TABLE Students DROP PRIMARY KEY;
*/

/*Check Table Student*/
SELECT * FROM Students;

/*SELECT entries using LIKE */
SELECT * FROM Students WHERE Last_Name LIKE 'A1%';

/*SELECT entries using LIKE */
SELECT * FROM Students WHERE Name LIKE 'A1%';


/* table 2 Students 2----------------------------------------------------------------*/
CREATE TABLE Students2 (
	Sr_No varchar(255),
	Name varchar(255),
	Last_Name varchar(255),
	ID int,
	Stream varchar(255),
	English varchar(255),
	Communication varchar(255),
	Accounts varchar(255),
	OC varchar(255)
);

/*Check Table Student*/
SELECT * FROM Students2;

/*Adding values to Students2 table*/
INSERT INTO students2 (Sr_No, Name, Last_Name, ID, Stream, English, Communication, Accounts, OC)
 VALUE (1, "B1", "B1X", 001, "BCOM", 80, 70, 70, 60)
 ,(2, "B2", "B2X", 002, "MCOM", 70, 50, 66, 64)
, (3, "B3", "B3X", 003, "BCOM", 60, 70, 87, 66)
, (4, "B4", "B4X", 004, "MCOM", 40, 70, 56, 69)
, (5, "B5", "B5X", 005, "MCOM", 70, 90, 76, 60)
, (6, "B6", "B6X", 006, "BCOM", 20, 40, 87, 69)
, (7, "B7", "B7X", 007, "MCOM", 90, 90, 99, 00)
, (8, "B8", "B8X", 008, "MCOM", 60, 50, 56, 50)
, (9, "B9", "B9X", 009, "BCOM", 70, 80, 86, 70)
, (10, "B10", "B10X", 010, "MCOM", 95, 77, 56, 55)
, (11, "B11", "B11X", 011, "MCOM", 55, 44, 76, 54)
, (12, "B12", "B12X", 012, "BCOM", 40, 76, 59, 78)
, (13, "B13", "B13X", 013, "MCOM", 70, 78, 56, 98)
, (14, "B14", "B14X", 014, "MCOM", 60, 88, 98, 78)
, (15, "B15", "B15X", 015, "BCOM", 80, 87, 65, 60);

/*Check Table Student*/
SELECT * FROM Students2;

/*SELECT entries from 2 tables*/
SELECT * FROM Students.Stream, Students2.Stream WHERE Stream = 'BCOM';





/* table 3 Employee----------------------------------------------------------------*/
CREATE TABLE Employees (
  empno decimal(4,0) NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr decimal(4,0) default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno decimal(2,0) default NULL
);

/*Check Table Employees*/
SELECT * FROM Employees;

INSERT INTO Employees VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20'),
('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30'),
('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30'),
('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20'),
('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30'),
('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30'),
('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10'),
('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20'),
('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10'),
('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30'),
('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20'),
('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30'),
('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20'),
('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10')