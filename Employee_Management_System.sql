create database Employee_Management_System;
use Employee_Management_System;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL
);
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    DateOfBirth DATE,
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
    ON delete cascade
on update cascade
);
CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    AttendanceDate DATE,
    Status ENUM('Present', 'Absent', 'Late'),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
    ON delete cascade
on update cascade
);
INSERT INTO Departments (DepartmentID,DepartmentName)
VALUES 
(87,"COMPUTER SCIENCE"),
(80,"COMPUTER SCIENCE"),
(93,"COMPUTER SCIENCE"),
(60,"COMPUTER SCIENCE"),
(68,"COMPUTER SCIENCE"),
(96,"COMPUTER SCIENCE");
INSERT INTO Employees
(EmployeeID,FirstName,LastName,DepartmentID,DateOfBirth,PhoneNumber,Email,HireDate,Salary)
VALUES
(101,"ram","sharma",87,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000),
(102,"raj","sharma",80,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000),
(103,"aryan","sharma",93,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000),
(104,"achal","sharma",60,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000),
(105,"abhi","sharma",68,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000),
(106,"pankaj","sharma",96,'2023-12-31',687438988,"abc@gmail.com",'2023-12-31',50000);
INSERT INTO Attendance (EmployeeID,AttendanceDate, Status)
VALUES 
 (101, '2024-07-20', 'Present'),
 (102, '2024-07-20', 'Absent'),
 (103, '2024-07-20', 'Present'),
 (104, '2024-07-20', 'Absent'),
 (105, '2024-07-20', 'Present'),
 (106, '2024-07-20', 'Absent');
UPDATE Employees
SET Salary = 55000.00
WHERE EmployeeID = 101;
SELECT * FROM Employees;
SELECT * FROM Attendance;
