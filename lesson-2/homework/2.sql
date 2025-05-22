--Basic-Level Tasks 

Create database Homework_2
Use Homework_2
Create table Employees (EmpID INT, NAME VARCHAR (50), Salary DECIMAL(10,2))
SELECT * FROM Employees


INSERT INTO Employees (EmpID, name, Salary) values (1,'Joxon', 10000),(2,'MASHA', 11500),(3,'PASHA', 10500)
TRUNCATE TABLE Employees
SELECT * FROM Employees


Update Employees
set Salary =7000
Where EmpID = 1


Delete from Employees
where EmpID = 2
SELECT * FROM Employees


-- Defenition for difference betwen ''DELETE, TRUNCATE, DROP''
-- 1) DELETE - This command Deletes certain rows 
--> SYNRAX = DELETE FROM (NAME OF TABLE) WHERE (condition)
-- 2) TRUNCATE - This command Deletes all rows in table
--> SYNRAX = TRUNCATE TABLE (NAME OF TABLE)
-- 3) DROP - This command Deletes table and database completaly.
--> SYNRAX = DROP TABLE (NAME OF TABLE) or DROP DATABASE (NAME OF DATABASE)


TRUNCATE TABLE Employees
Create table Employees (EmpID INT, NAME VARCHAR (100), Salary DECIMAL(10,2))
INSERT INTO Employees (EmpID, name, Salary) values (1,'Joxon', 10000),(2,'MASHA', 11500),(3,'PASHA', 10500)
SELECT * FROM Employees
Update Employees
set Salary =7000
Where EmpID = 1


Delete from Employees
where EmpID = 2
SELECT * FROM Employees


ALTER TABLE Employees
ADD Department VARCHAR(50)


ALTER TABLE employees
ALTER COLUMN Salary FLOAT
SELECT * FROM Employees


Create table Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(50))
SELECT * FROM Departments


TRUNCATE TABLE Employees
SELECT * FROM Employees

--Intermediate-Level Tasks

SELECT * FROM Departments
Create table Departments (EmpID INT, NAME VARCHAR (100), Salary DECIMAL(10,2), AGE INT, SEX VARCHAR (100))
INSERT INTO Departments (EmpID, name, Salary, AGE, SEX) values (1,'Joxon', 10000, 18, 'FEMALE'),
ALTER TABLE Departments
ADD EmpID INT
ALTER TABLE Departments
ADD NAME VARCHAR (100)
ALTER TABLE Departments
ADD Salary DECIMAL(10,2)
ALTER TABLE Departments
ADD AGE INT
ALTER TABLE Departments
ADD SEX VARCHAR (100)
SELECT * FROM Departments
INSERT INTO Departments (DepartmentID, DepartmentName, EmpID, name, Salary, AGE, SEX) values (001, 'Sales', 1,'Joxon', 10000, 18, 'FEMALE'),
(002, 'Management', 2,'Doston', 11500, 88, 'FEMALE'),
(003, 'IT', 3,'DAMIR', 11500, 35, 'FEMALE'),
(004, 'Analyst', 4,'AZIZ', 11500, 77, 'FEMALE'),
(005, 'HR', 5,'SARDOR', 11500, 25, 'FEMALE')
SELECT * FROM Departments


Update Departments
set DepartmentName = 'Management'
Where salary > 5000


TRUNCATE TABLE Departments


SELECT * FROM Employees
ALTER TABLE Employees
DROP COLUMN Department


EXEC sp_rename 'Employees', 'StaffMembers'
SELECT * FROM StaffMembers


DROP TABLE Departments



--Advanced-Level Tasks
Create table Products  (ProductID INT Primary Key, ProductName VARCHAR (77), 
Category VARCHAR (77), 
Price DECIMAL (10,2) CHECK (Price > 0))
Drop table Products
SELECT * FROM Products
ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50



EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN'
SELECT * FROM Products

INSERT INTO Products (ProductID, ProductName, ProductCategory, Price) 
values (001, 'Apple', 'Fruit', 10000),
(002, 'PineApple', 'Fruit', 11500),
(003, 'Banana','Fruit', 11500),
(004, 'Pen', 'Non-Food', 11500 ),
(005, 'Note','None-Food', 11500)

SELECT * INTO Products_Backup
FROM Products
SELECT * FROM Products


EXEC sp_rename 'Products', 'Inventory'
SELECT * FROM Inventory


ALTER TABLE Inventory
DROP CONSTRAINT CK__Products__Price__4316F928;

ALTER TABLE Inventory
ALTER COLUMN Price FLOAT

SELECT * FROM Inventory

