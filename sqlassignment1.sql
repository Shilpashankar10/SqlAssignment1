-- DATABASE CREATION
CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;

-- TABLE CREATION
CREATE TABLE Departments(department_id INT,department_name varchar(100));
CREATE TABLE location(location_id INT,location varchar(30));
CREATE TABLE employees(employee_id INT,employee_name varchar(50),gender enum('M','F'),age int,hire_date date,designation varchar(100),department_id INT,location_id INT,salary decimal(10,2));

-- Table Alteration
ALTER TABLE employees add column email varchar(20);
ALTER TABLE employees MODIFY designation text;
ALTER TABLE employees DROP COLUMN age;
ALTER TABLE employees RENAME COLUMN hire_date to date_of_joining;

-- Table Renaming 
RENAME TABLE departments to departments_info;
RENAME TABLE location to locations;

-- Table Truncation
TRUNCATE TABLE employees;

--  Database & Table Dropping
DROP TABLE employees;
DROP DATABASE employee;

-- CONSTRAINTS
-- DATABASE RECREATION
DROP DATABASE IF EXISTS employees;
CREATE DATABASE employee;
USE employee;

-- Departments Table
CREATE TABLE DEPARTMENTS(department_id int auto_increment primary key,department_name varchar(100) unique not null);

-- Location Table
CREATE TABLE LOCATION(location_id int auto_increment primary key,location varchar(30) unique not null);

-- Employees Table
CREATE TABLE employees(employee_id INT auto_increment key,employee_name varchar(50) not null,gender enum('M','F'),age int check (age >= 18),
hire_date date default (curdate()),designation varchar(100),
department_id INT,location_id INT,FOREIGN KEY (department_id) REFERENCES departments(department_id),
FOREIGN KEY (location_id) REFERENCES location(location_id),salary decimal(10,2));


