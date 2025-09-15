create database emprecords;

use emprecords;

-- Department Table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Employees Table
CREATE TABLE Employees (
    id INT PRIMARY KEY auto_increment,
    emp_id INT unique,
    emp_name VARCHAR(50),
    salary DECIMAL(10,2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);

INSERT INTO Employees (emp_id,emp_name,salary,dept_id)VALUES
(101, 'Ravi', 50000, 2),
(102, 'Priya', 60000, 1),
(103, 'Kumar', 45000, 3),
(104, 'John', 30000, NULL);



select * from Employees;





