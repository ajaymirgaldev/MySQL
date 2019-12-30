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

/*Order by Sr No Accending*/
SELECT * FROM Students WHERE Java >'60' AND Oracle >'60' AND C >'60';

/*PRIMARY KEY on ALTER TABLE*/
ALTER TABLE Students ADD PRIMARY KEY (ID);

/*Check Table Student*/
SELECT * FROM Students;

/*DROP a PRIMARY KEY Constraint
ALTER TABLE Students DROP PRIMARY KEY;*/

/*Check Table Student*/
SELECT * FROM Students;


