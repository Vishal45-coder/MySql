create database organization;
use organization;
create table Employee (
    emp_id int not null,
    Name varchar(20),
    Age int check(Age>18),
    Gender varchar(2),
    unique(emp_id)
);

insert into Employee (emp_id,Name,Age,Gender) values(10548,"Varun",28,"M");

insert into Employee (emp_id,Name,Age,Gender) values(10549,"Sandesh",19,"M");

Select * from Employee;

Create view VirtualEmploy as select * from Employee;

select * from VirtualEmploy;

create table Departments (
    Dept_id int not null,
    Dept_name varchar(20),
    unique(Dept_id)
);

insert into Departments (Dept_id,Dept_name) values(236541,"Web development");
insert into Departments (Dept_id,Dept_name) values(569875,"AI & ML");

select * from Departments;

Create view VirtualDepartments as select * from Departments;

select * from VirtualDepartments;

select * from VirtualEmploy,VirtualDepartments;

drop view VirtualEmploy;