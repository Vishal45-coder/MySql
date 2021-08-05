create database company;
use company;
create table Employee(id int,Name varchar(20),Age int,Gender varchar(2),Salary double);

create table Departments(Name varchar(20),Dept_id int,Dept_Name varchar(30));

show tables;


insert into Employee(id,Name,Age,Gender,Salary) values(567983,"Joey",30,"M",65600);

insert into Employee(id,Name,Age,Gender,Salary) values(567988,"Ross",31,"M",90600);

insert into Employee(id,Name,Age,Gender,Salary) values(567987,"Chandler",33,"M",70600);

/**
Here we use (*) because we want to select all the attributes from the table Employee
*/
select* from Employee; 

/**
Here we use Name,id,Salary attribute because we want to get Name,id,Salary attribute from Employee table
*/
select Name from Employee;
select id from Employee;
select Salary from Employee;

/**
To select two attributes at a  time from a same table
*/
select Name,id from Employee;