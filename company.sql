create database company;
use company;
create table Employee(id int,Name varchar(20),Age int,Gender varchar(2),Salary double);

create table Departments(Name varchar(20),Dept_id int,Dept_Name varchar(30));

show tables;


insert into Employee(id,Name,Age,Gender,Salary) values(567983,"Joey",30,"M",65600);

insert into Employee(id,Name,Age,Gender,Salary) values(567988,"Ross",31,"M",90600);

insert into Employee(id,Name,Age,Gender,Salary) values(567987,"Chandler",33,"M",70600);

select* from Employee;