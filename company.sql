create database company;
use company;
create table Employee(emp_id int,Name varchar(20),Age int,Gender varchar(2),Salary double);

create table Departments(emp_id int,Dept_id varchar(10),Dept_Name varchar(30));

create table Project(Project_name varchar(20));
show tables;


insert into Employee(emp_id,Name,Age,Gender,Salary) values(567983,"Joey",30,"M",65600);

insert into Employee(emp_id,Name,Age,Gender,Salary) values(567988,"Ross",31,"M",90600);

insert into Employee(emp_id,Name,Age,Gender,Salary) values(567987,"Chandler",33,"M",70600);


insert into Departments(emp_id,Dept_id,Dept_name) values (567893,"QWEDF45","Accountant");

insert into Departments(emp_id,Dept_id,Dept_name) values (567898,"QWEDF75","Biotechnoogy");

insert into Departments(emp_id,Dept_id,Dept_name) values (567897,"QWEDF95","Recruiter");
/**
Here we use (*) because we want to select all the attributes from the table Employee
*/
select* from Employee; 
select* from Departments;
/**
Here we use Name,id,Salary attribute because we want to get Name,id,Salary attribute from Employee table
*/
select Name from Employee;
select emp_id from Employee;
select Salary from Employee;

/**
To select two attributes at a  time from a same table
*/
select Name,emp_id from Employee;

/**
This is used when we want to select all attributes from n tables
*/
select* from Employee,Departments;

/**
To delete the whole table with structure
*/
drop table Project;

/**
To delete only values in the table
*/
truncate Employee;

/**
To rename a tablename
*/
rename table Employee to Employees;

Select * from Employees;